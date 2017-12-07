require 'sinatra/base'
require './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/login' do
    erb(:login)
  end

  post '/login' do
    $player = Player.new(params[:name])
    redirect '/cha_select'
  end

  get '/cha_select' do
    @name = $player.name
    erb(:cha_select)
  end

  post '/cha_select' do
    $player.char = params[:char]
    redirect '/battle'
  end

  get '/battle' do
    @name = $player.name
    @char = $player.char
    $player.set_health
    @health = $player.health
    erb(:battle)
  end

  run! if app_file == $0
end
