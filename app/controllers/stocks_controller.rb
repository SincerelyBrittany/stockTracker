class StockController < ApplicationController

   get '/stocks/new' do
     authenticate
     erb :'/stocks/new'
   end

  post '/stocks/new' do
     authenticate
     @current_user_watchlist_id = params[:watchlist_id]
     erb :'/stocks/new'
   end

   post '/stocks' do

     authenticate
     @watchlists = current_user.watchlists
     searched_ticker = params[:stock][:name]
     # begin
       @info = APImanager.get_quote(searched_ticker)[0]
     # rescue
     #   raise NoStockError.new
     # end
     # if @info.nil?
     #   redirect '/watchlists'
     # end
     @stocks = Stock.new(name: @info[:name],
              ticker: @info[:ticker],
              price: @info[:price],
              logo: @info[:logo],
              ceo: @info[:ceo],
              description: @info[:description]
              )

        # binding.pry
      # if @stock.save
      #   @watchlists << @stock
      # else
      #
      # end
      # binding.pry

     erb :'/stocks/index'
   end
   #
   # get '/stocks/:id/edit' do
   #   @stock = Stock.find_by(id: params[:id])
   #   authorize(@stock)
   #   # binding.pry
   #   erb :'/stocks/edit'
   # end

   patch '/stocks/:id' do
     @stock = Stock.find_by(id: params[:id])
     authorize(@stock)
     if @stock.update(name: params[:stock][:name])
       redirect '/stocks'
     else
       redirect "/stocks/#{@stock.id}/edit"
     end
   end

   get '/stocks/:id' do
     authenticate
     @stock = Stock.find_by(id: params[:id])
     # erb :'/stocks/show'
   end

   delete '/stocks/:id' do
     watchlist_id = Stock.find_by(id: params[:id]).watchlists.ids[0]
     @watchlist_id = watchlist_id.to_s
     @stock = Stock.find_by(id: params[:id])
     # authorize(@stock)
     @stock.destroy
     redirect "/watchlists/#{@watchlist_id}"
   end

end
