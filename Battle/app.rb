#!/usr/bin/env ruby

require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    $warrior_1 = Player.new(params[:warrior_1])
    $warrior_2 = Player.new(params[:warrior_2])
    redirect('/play')
  end

  get '/play' do
    @warrior_1 = $warrior_1
    @warrior_2 = $warrior_2
    erb :play
  end

  get '/attack' do
    @warrior_1 = $warrior_1
    @warrior_2 = $warrior_2
    game = Game.new
    game.attack(@warrior_2)
    erb :attack
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
