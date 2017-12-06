require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/login' do
    erb(:login)
  end

  post '/login' do
    session[:name] = params[:name]
    redirect '/cha_select'
  end

  get '/cha_select' do
    @name = session[:name]
    erb(:cha_select)
  end

  post '/cha_select' do
    session[:char] = params[:char]
    redirect '/battle'
  end

  get '/battle' do
    @name = session[:name]
    @char = session[:char]
    erb(:battle)
  end

  run! if app_file == $0
end
