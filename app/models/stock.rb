class Stock < ActiveRecord::Base 
  has_many :watchlist_stocks, dependent: :destroy
  has_many :watchlists, through: :watchlist_stocks

end
