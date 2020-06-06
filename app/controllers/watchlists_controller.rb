class WatchlistsController < ApplicationController

  get '/watchlists' do #works
     authenticate
     @watchlists = current_user.watchlists
     erb :'watchlists/index'
   end

   get '/watchlists/new' do #works
     authenticate
     erb :'/watchlists/new'
   end

   post '/watchlists' do
     authenticate
     # binding.pry
     Watchlist.create(name: params[:watchlist][:name], user_id: current_user.id)
     flash[:message] = "Successfully created song."
     # redirect("/songs/#{@song.slug}")
     redirect '/watchlists'

   end

   get '/watchlists/:slug/edit' do
     @watchlist = Watchlist.find_by(id: params[:id])
     authorize(@watchlist)
     # binding.pry
     erb :'/watchlists/edit'
   end

   patch '/watchlists/:id' do
     @watchlist = Watchlist.find_by(id: params[:id])
     authorize(@watchlist)
     if @watchlist.update(name: params[:watchlist][:name])
       redirect '/watchlists'
     else
       redirect "/watchlists/#{@watchlist.id}/edit"
     end
   end

   get '/watchlists/:id' do
     authenticate
     @watchlist = Watchlist.find_by(id: params[:id])
     erb :'/watchlists/show'
   end

   delete '/watchlists/:id' do
     @watchlist = Watchlist.find_by(id: params[:id])
     authorize(@watchlist)
     @watchlist.destroy
     redirect '/watchlists'
   end

end
