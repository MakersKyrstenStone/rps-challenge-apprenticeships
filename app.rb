require 'sinatra/base'
require 'capybara'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/test' do
    'test page'
  end

  get '/' do
    @name = session[:plname]
    erb(:index)
  end

  post '/name_of_player' do
    p params
    session[:plname] = params[:pname]
    p :plname
    redirect '/'
  end

  get '/player_name' do
    p '1st check'
    erb(:playername)
  end

  run! if app_file == $0
end
