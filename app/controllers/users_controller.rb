class UsersController < ApplicationController

  get '/users/:id/edit' do
    @u = User.find_by(id: params[:id])
    authorize_user(@u)
    erb :'/users/edit'
  end

  patch '/users/:id' do
    @u = User.find_by(id: params[:id])
    authorize_user(@u)
    @u.update(username: sanitize(params[:username]),
      email: sanitize(params[:email]),
      location: sanitize(params[:location]),
      age: sanitize(params[:age]),
      password: params[:password]
      )
    if @u.save
      redirect '/watchlists'
    else
      erb :"/users/edit"
    end

  end

end
