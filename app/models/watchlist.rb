class Watchlist < ActiveRecord::Base
  belongs_to :user
  has_many :stocks

  def slug
  name.downcase.gsub(" ","-")
  end

  # def self.find_by_slug(slug)
  #   Watchlist.all.find { |watchlist| watchlist.slug == slug }
  # end
end
