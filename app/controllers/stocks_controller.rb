class StockController < ApplicationController

   get '/stocks/new' do
     authenticate
     erb :'/stocks/new'
   end

  # post '/stocks/new' do
  #    authenticate
  #    erb :'/stocks/new'
  #  end

   post '/stocks' do
     authenticate
     @watchlists = current_user.watchlists
     searched_ticker = params[:stock][:name]
     @info = APImanager.get_quote(searched_ticker)[0]
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
     @watchlist_id = Stock.find_by(id: params[:id]).watchlists.ids[0]
     @stock = Stock.find_by(id: params[:id])
     # authorize(@stock)
     @stock.destroy
     redirect "/watchlists/#{@watchlist_id}"
   end

end
