class UsersController < ApplicationController

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
      @u = User.new(:username => params[:username].gsub(/[\<\>\/]/, ""),
                          :password => params[:password],
                          :email => params[:email].gsub(/[\<\>\/]/, ""),
                          :location => params[:location].gsub(/[\<\>\/]/, ""),
                          :age => params[:age].gsub(/[\<\>\/]/, ""))
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
