require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
require 'pry'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    piggie = PigLatinizer.new
    @complete = piggie.to_pig_latin(params[:words])

    erb :results
  end


end
