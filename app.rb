require 'bundler/setup'
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get '/' do
  @bands = Band.all
  @venues = Venue.all
  erb :index
end

post '/add_band' do
  name = params.fetch("name")
  Band.create(name: name)
  redirect back
end

post '/add_venue' do
  name = params.fetch("name")
  Venue.create(name: name)
  redirect back
end

get '/bands/:id' do
  @venues = Venue.all
  band_id = params.fetch("id").to_i
  @band = Band.find(band_id)
  erb :band
end

post '/add_show' do
  band = Band.find(params.fetch("band_id"))
  params['venue_id'].each do |venue_id|
    venue = Venue.find(venue_id.to_i)
    band.venues << venue
  end
  redirect back
end

patch '/bands/:id' do
  band = Band.find(params.fetch("id").to_i)
  band.update(name: params.fetch("name"))
  redirect back
end