#!/usr/bin/env ruby

require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    @warrior_1 = params[:warrior_1]
    @warrior_2 = params[:warrior_2]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
