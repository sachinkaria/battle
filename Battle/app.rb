#!/usr/bin/env ruby

require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base
enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    $warrior_1 = Player.new(params[:warrior_1])
    $warrior_2 = Player.new(params[:warrior_2])
    # session[:warrior_1] = params[:warrior_1]
    # session[:warrior_2] = params[:warrior_2]
    redirect('/play')
  end

  get '/play' do
    @warrior_1 = $warrior_1.name
    @warrior_2 = $warrior_2.name
    erb :play
  end

  get '/attack' do
    @warrior_1 = $warrior_1.name
    @warrior_2 = $warrior_2.name
    erb :attack
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
