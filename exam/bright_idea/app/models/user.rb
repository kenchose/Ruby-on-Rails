class User < ActiveRecord::Base
  has_secure_password
  has_many :comments
  has_many :likes
  has_many :ideas
  validates :name, :alias, :email, presence: true
end
