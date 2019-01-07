class User < ActiveRecord::Base
  validates :username, presence:true, uniqueness: true, length: { minimum: 5 } #or length: { greater_than: 5 }
  has_many :comments
  has_many :messages
end
