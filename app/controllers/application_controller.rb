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

    self.helpers do

    def current_user
       User.find_by(id: session[:user_id])
     end

     def logged_in?
       !!current_user
     end

     def authenticate
       redirect '/login' if !logged_in?
     end

     def authorize_user(user)
       authenticate
       redirect '/watchlists' if user != current_user
     end

     def authorize(watchlist)
        authenticate
        redirect '/watchlists' if watchlist.user != current_user
     end

     def sanitize(params)
        Sanitize.fragment(params)
     end

    end
    error NoStockError do
      @error = "Invalid Credentials"
      @stock = params[:stock][:name]
      @watchlist_id = params[:watchlist_id]
      erb :'stocks/new', status: 404
    end
  end
