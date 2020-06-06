class StockController < ApplicationController

  get '/stocks' do #works
     authenticate
     APImanager.get_quote
     # @stocks = current_user.stocks
     erb :'stocks/index'
   end

   get '/stocks/new' do #works
     authenticate
     erb :'/stocks/new'
   end

   # post '/stocks' do
   #   authenticate
   #   # binding.pry
   #   Stock.create(name: params[:stock][:name], user_id: current_user.id)
   #   # flash[:message] = "Successfully created song."
   #   # redirect("/songs/#{@song.slug}")
   #   redirect '/stocks'
   #
   # end
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
