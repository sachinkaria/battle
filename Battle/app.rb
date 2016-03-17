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
    player_1 = Player.new(params[:warrior_1])
    player_2 = Player.new(params[:warrior_2])
    $game = Game.new(player_1, player_2)
    redirect('/play')
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack
    erb :attack
  end

  post '/switching' do
    @game = $game
    @game.switch_player
    redirect('/play')

  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
