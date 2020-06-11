class User < ActiveRecord::Base #figures

has_secure_password
has_many :watchlists, dependent: :destroy
has_many :stocks, through: :watchlist
validates :username, uniqueness: true
validates :username, presence: true
validates :email, presence: true

def slug
  self.username.downcase.tr(" ","-")
end


  def self.find_by_slug(slug)
    User.all.find { |user| user.slug == slug }
  end

end
