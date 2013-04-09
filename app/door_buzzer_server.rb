require 'sinatra'
require 'wiringpi'

#TODO: parse webcam url from config.yml
get '/' do
  haml :index
end

get '/buzz' do
  @gpio ||= WiringPi::GPIO.new(WPI_MODE_SYS)

  @gpio.write(17, HIGH)
  sleep(5)
  @gpio.write(17, LOW)

  redirect '/'
end