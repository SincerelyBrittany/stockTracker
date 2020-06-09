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

   post '/watchlists' do
     authenticate
    if params[:watchlist][:stock] == nil
     @watchlist = current_user.watchlists.build(name: params[:watchlist][:name], user_id: params[:user_id])
      if @watchlist.save
        flash[:message] = "You have successfully created an order."
      redirect "/watchlists"
    else
        flash[:error] = @watchlist.errors.full_messages
        redirect "/watchlists/new"
      end
   else
     # binding.pry #NEED A FOR EACH STATEMENT FOR THE WATCHLIST IDS
     @stock = Stock.new(name: params[:watchlist][:stock][:name], price: params[:watchlist][:stock][:price],
     logo: params[:watchlist][:stock][:logo], ceo: params[:watchlist][:stock][:ceo],
     description: params[:watchlist][:stock][:description], ticker: params[:watchlist][:stock][:ticker])
      # binding.pry
     #@watchlist = Watchlist.find(params[:watchlist][:id])
     @watchlists = Watchlist.find(params[:watchlist][:id])
     @watchlists.each do |watchlist|
        watchlist.stocks << @stock
      end
       # binding.pry
     # @watchlist.stocks << @stock
     redirect '/watchlists'
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

   get '/watchlists/:id' do
     authenticate
     # binding.pry
     @watchlist = Watchlist.find_by(id: params[:id])
     # binding.pry
     @stocks = @watchlist.stocks
     erb :'/watchlists/show'
   end

   delete '/watchlists/:id' do
     @watchlist = Watchlist.find_by(id: params[:id])
     authorize(@watchlist)
     @watchlist.destroy
     redirect '/watchlists'
   end

end
