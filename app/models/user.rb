class User < ActiveRecord::Base

has_secure_password
has_many :watchlists, dependent: :destroy
# has_many :stocks, through: :watchlists
validates :username, uniqueness: true
validates :username, presence: true
validates :email, presence: true

end
