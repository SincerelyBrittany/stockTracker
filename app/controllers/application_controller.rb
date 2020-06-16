require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    register Sinatra::Flash
    set :session_secret, ENV['SESSION_PASSWORD']
    set :show_exceptions, false
  end

  get "/" do
    erb :welcome
  end


    helpers do

        def current_user
            User.find_by(id: session[:user_id]) #the session user id gives me a valid user based off some id
        end

        def logged_in?
            !!current_user
        end

        def authenticate
            redirect '/login' if !logged_in?
        end

        def authorize(watchlist)
            authenticate
            redirect '/watchlists' if watchlist.user != current_user
        end

    end
    error NoStockError do
      # binding.pry
      @error = "Invalid Credentials"
      erb :'stocks/new', status: 404
    end
  end
