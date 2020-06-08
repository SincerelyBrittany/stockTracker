class Stock < ActiveRecord::Base #titles
  belongs_to :user
  has_many :watchlist_stocks
  has_many :watchlists, through: :watchlist_stocks

  def slug
  name.downcase.gsub(" ","-")
  end

end
