class Stock < ActiveRecord::Base #titles
  has_many :watchlist_stocks
  has_many :watchlists, through: :watchlist_stocks

end
