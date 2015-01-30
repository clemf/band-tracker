require 'bundler/setup'
Bundler.require(:default, :test)

Dir[File.dirname(__File__) + '/../lib/*.rb'].each { |file| require file }