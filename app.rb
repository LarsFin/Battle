require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/battle' do
    @name = params[:name]
    erb(:battle)
  end

  post '/battle' do
    @name = params[:name]
    erb(:battle)
  end

  get '/login' do
    @name = params[:name]
    erb(:login)
  end

  run! if app_file == $0
end
