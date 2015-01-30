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