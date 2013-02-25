require 'sinatra'
require 'gpio'

#TODO: parse webcam url from config.yml
get '/' do
  haml :index
end

get '/buzz' do
  GPIO::Pin.new(pin: 22)
end