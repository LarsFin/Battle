require 'sinatra/base'

class Battle < Sinatra::Base
  get '/battle' do
    'The battle test works!'
  end

  run! if app_file == $0
end
