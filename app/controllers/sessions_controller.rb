class SessionsController < ApplicationController

  get '/signup' do
      redirect '/watchlists' if logged_in?
      erb :'/sessions/signup'
  end

  post '/signup' do
    redirect '/watchlists' if logged_in?
    @u = User.new(email: sanitize(params[:email]),
      username: sanitize(params[:username]),
      :location => sanitize(params[:location]),
      :age => sanitize(params[:age]),
      password: sanitize(params[:password])
    )
    #   binding.pry
    # @u = User.new(sanitize_hash(params))

    if @u.save
      session[:user_id] = @u.id
      redirect '/watchlists'
    else
      erb :'sessions/signup'
    end
  end

  get '/login' do
    redirect '/watchlists' if logged_in?
    erb :'/sessions/login'
  end

  post '/login' do
    redirect '/watchlists' if logged_in?
    # binding.pry
    u = User.find_by(username: params[:username])
    if u && u.authenticate(params[:password])
      session[:user_id] = u.id
      redirect "/watchlists"
    else
      @err = "Your credentials are incorrect. Please try again"
      erb  :'sessions/login'
    end
  end

  get '/logout' do
    session.clear
    redirect '/'
  end

end
