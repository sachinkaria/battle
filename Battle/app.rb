#!/usr/bin/env ruby

require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    p params
    'Hello Battle!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end