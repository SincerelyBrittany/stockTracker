class Stock < ActiveRecord::Base
  belongs_to :user
  has_many :watchlists

  def slug
  name.downcase.gsub(" ","-")
  end

end
