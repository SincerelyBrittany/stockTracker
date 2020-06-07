class StockController < ApplicationController

  get '/stocks' do #works
     authenticate
     binding.pry
     # @stocks = current_user.stocks
     erb :'stocks/index'
   end

   get '/stocks/new' do #works
     authenticate
     erb :'/stocks/new'
   end

   post '/stocks' do
     authenticate
     searched_ticker = params[:stock][:name]
     @info = APImanager.get_quote(searched_ticker)[0]
     Stock.new(name: @info[:name],
              ticker: @info[:ticker],
              price: @info[:price],
              logo: @info[:logo],
              ceo: @info[:ceo],
              description: @info[:description]
              )
     redirect '/stocks'

   end
   #
   # get '/stocks/:id/edit' do
   #   @stock = Stock.find_by(id: params[:id])
   #   authorize(@stock)
   #   # binding.pry
   #   erb :'/stocks/edit'
   # end
   #
   # patch '/stocks/:id' do
   #   @stock = Stock.find_by(id: params[:id])
   #   authorize(@stock)
   #   if @stock.update(name: params[:stock][:name])
   #     redirect '/stocks'
   #   else
   #     redirect "/stocks/#{@stock.id}/edit"
   #   end
   # end
   #
   # get '/stocks/:id' do
   #   authenticate
   #   @stock = Stock.find_by(id: params[:id])
   #   erb :'/stocks/show'
   # end
   #
   # delete '/stocks/:id' do
   #   @stock = Stock.find_by(id: params[:id])
   #   authorize(@stock)
   #   @stock.destroy
   #   redirect '/stocks'
   # end

end
