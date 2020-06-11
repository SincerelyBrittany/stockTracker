require './config/environment'

class APImanager

 def self.get_quote(searched_ticker)
   client = IEX::Api::Client.new(
     publishable_token: "#{ENV['PUBLISHABLE_TOKEN_ID']}",
     secret_token: "#{ENV['SECRET_TOKEN_ID']}",
     endpoint: 'https://cloud.iexapis.com/v1')
     # info.new([ticker: client.company("#{searched_ticker}").symbol],
     # [price: client.quote("#{searched_ticker}").latest_price])

     begin
       @array = [
       ticker: client.company("#{searched_ticker}").symbol,
       price: client.quote("#{searched_ticker}").latest_price,
       name: client.company("#{searched_ticker}").company_name,
       description: client.company("#{searched_ticker}").description,
       logo: client.logo("#{searched_ticker}").url,
       ceo: client.company("#{searched_ticker}").ceo

       ]

     # rescue
     #   return [nil]
     # end

     rescue
       raise NoStockError.new
     end



        # binding.pry

     # @ticker = client.company("#{searched_ticker}").symbol,
     # @price = client.quote("#{searched_ticker}").latest_price,
     # @name = client.company("#{searched_ticker}").company_name,
     # @description = client.company("#{searched_ticker}").description,
     # @logo = client.logo("#{searched_ticker}").url,
     # @ceo = client.company("#{searched_ticker}").ceo]
     # binding.pry
     # t.string :ticker
     # t.string :name
     # t.string :exchange
     # t.string :logo
     # t.integer :price

     #@current_quote = client.quote('MSFT').latest_price
     # quote = client.quote('MSFT')
      # quote.latest_price # 90.165
      # quote.change # 0.375
      # quote.change_percent # 0.00418
      # quote.change_percent_s # '+0.42%'


      # ohlc = client.ohlc.get('MSFT')
      #   ohlc.close.price # 90.165
      #   ohlc.close.time #
      #   ohlc.open.price # 0.375
      #   ohlc.open.time
      #   ohlc.high # 0.00418
      #   ohlc.low # '+0.42%'

      # company = client.company('MSFT')
      #   company.ceo # 'Satya Nadella'
      #   company.company_name # 'Microsoft Corporation'

#       news = client.news('MSFT')

      # news.size # 10
      #
      # latest = news.first
      # latest.headline # 'Smartsheet files for $100M IPO with growing losses'
      # latest.url # 'https://...'
      # Retrieve a range between 1 and 50.
      #
      # news = client.news('MSFT', 5)

 end

end
