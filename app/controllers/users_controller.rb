class UsersController < ApplicationController
  
  get '/users/:slug' do
    user = User.find_by_slug(params[:slug])
    @playlists = user.playlists
    erb :'users/show'
  end

  post '/login' do
      u = User.find_by(username: params[:username])
      if u && u.authenticate(params[:password])
          #successful
          session[:user_id] = u.id
          redirect '/watchlists'
      else
          #unsuccessful
          @err = "Invalid Credentials"
          erb :'sessions/login'
      end
  end


  post '/signup' do
      @u = User.new(:username => params[:username],
                          :password => params[:password],
                          :email => params[:email],
                          :location => params[:location],
                          :age => params[:age])
      if @u.save
          #successful signup
          session[:user_id] = @u.id
          redirect "/watchlists"
      else
          #unsuccessful signup
          erb :'sessions/signup'
      end
  end


end
