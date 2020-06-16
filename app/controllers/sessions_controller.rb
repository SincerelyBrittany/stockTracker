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

    if @u.save
      session[:user_id] = @u.id
      # Pony.mail :to => params[:email],
      #     :from => 'me@example.com',
      #     :subject => 'Thank you for signing up'
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
    u = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
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
