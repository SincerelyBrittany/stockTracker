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
      #params[:stock][:watchlist_ids]
    if params[:watchlist][:stock] == nil
     @watchlist = current_user.watchlists.build(name: params[:watchlist][:name], user_id: params[:user_id])
#      @watchlist
# => #<Watchlist:0x00007fefc59d1b30 id: nil, name: "b3", user_id: 2, created_at: nil, updated_at: nil>
      if @watchlist.save
        flash[:message] = "You have successfully created an order."
      redirect "/watchlists"
    else
        flash[:error] = @watchlist.errors.full_messages
        redirect "/watchlists/new"
      end
     # Watchlist.create(name: params[:watchlist][:name], user_id: current_user.id)
   else
     binding.pry
     redirect '/watchlists'
   end
 end

   get '/watchlists/:id/edit' do
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
     # if @stocks == []
     #   redirect '/stocks/new'
     # else
     erb :'/watchlists/show'
    # end
   end

   delete '/watchlists/:id' do
     @watchlist = Watchlist.find_by(id: params[:id])
     authorize(@watchlist)
     @watchlist.destroy
     redirect '/watchlists'
   end

end
