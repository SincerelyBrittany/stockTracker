require 'sanitize'
class WatchlistsController < ApplicationController

  get '/watchlists' do
     authenticate
     @watchlists = current_user.watchlists
     erb :'watchlists/index'
   end

   get '/watchlists/new' do
     authenticate
     erb :'/watchlists/new'
   end

   get '/watchlists/:id' do
     @watchlist = Watchlist.find_by(id: params[:id])
     authorize(@watchlist)
     @stocks = @watchlist.stocks
     erb :'/watchlists/show'
   end

   post '/watchlists' do
     authenticate
    if params[:watchlist][:stock] == nil
      @watchlist = current_user.watchlists.new(name: Sanitize.fragment(params[:watchlist][:name]), user_id: params[:user_id])
      # binding.pry
      if @watchlist.save
      redirect "/watchlists"
      else
        redirect "/watchlists/new"
      end
   else
     @stock = Stock.create(name: params[:watchlist][:stock][:name], price: params[:watchlist][:stock][:price],
     logo: params[:watchlist][:stock][:logo], ceo: params[:watchlist][:stock][:ceo],
     description: params[:watchlist][:stock][:description], ticker: params[:watchlist][:stock][:ticker])
     @watchlist = Watchlist.find(params[:watchlist][:id][0])
     @watchlist.stocks << @stock

     redirect "/watchlists/#{@watchlist.id}"
   end
 end

   get '/watchlists/:id/edit' do
     @watchlist = Watchlist.find_by(id: params[:id])
     authorize(@watchlist)
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

   delete '/watchlists/:id' do
     @watchlist = Watchlist.find_by(id: params[:id])
     authorize(@watchlist)
     @watchlist.destroy
     redirect '/watchlists'
   end

end
