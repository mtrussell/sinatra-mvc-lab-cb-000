require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  get '/piglatinize' do
    erb :results
  end

  post '/piglatinize' do
    pig = PigLatinizer.new
    @pig_phrase = pig.piglatinize(params[:user_input])
    erb :results
  end

end
