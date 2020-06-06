require './config/environment'

class APImanager

 def self.get_quote
   client = IEX::Api::Client.new(
     publishable_token: "#{ENV['PUBLISHABLE_TOKEN_ID']}",
     secret_token: "#{ENV['SECRET_TOKEN_ID']}",
     endpoint: 'https://cloud.iexapis.com/v1')

     binding.pry
 end

end
