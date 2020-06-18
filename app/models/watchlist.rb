class Watchlist < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true
  has_many :watchlist_stocks
  has_many :stocks, through: :watchlist_stocks

end
