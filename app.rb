require 'sinatra/base'



class Battle < Sinatra::Base
  enable :sessions

  get '/check' do
    'Hello Battle!'
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:name1] = params[:name1]
    session[:name2] = params[:name2]
    redirect '/play'
  end

  get '/play' do
  @player1 =session[:name1]
  @player2 =session[:name2]
    erb(:play)
  end


  # get '/' do
  #   "name =" session[:name1]
  # end


  # get '/:name2' do
  #   session[:name2] = params[:name2]
  # end
  # start the server if ruby file executed directly
  run! if app_file == $0

end
