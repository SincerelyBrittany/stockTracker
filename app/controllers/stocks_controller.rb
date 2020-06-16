class StockController < ApplicationController

   get '/stocks/new' do
     authenticate
     @current_id = params[:watchlist_id]
     erb :'/stocks/new'
   end

   post '/stocks' do
     authenticate
     @current_id = current_user.watchlists.find_by(id: params[:watchlist_id])
     searched_ticker = params[:stock][:name]

     @info = APImanager.get_quote(searched_ticker)[0]
     @stocks = Stock.new(name: @info[:name],
              ticker: @info[:ticker],
              price: @info[:price],
              logo: @info[:logo],
              ceo: @info[:ceo],
              description: @info[:description]
              )

     erb :'/stocks/index'
   end

   delete '/stocks/:id' do
     watchlist_id = Stock.find_by(id: params[:id]).watchlists.ids[0]
     @watchlist_id = watchlist_id.to_s
     @stock = Stock.find_by(id: params[:id])
     @stock.destroy
     redirect "/watchlists/#{@watchlist_id}"
   end

end
