class User < ActiveRecord::Base
  has_secure_password
  validates :first_name, :last_name, :email, :location, :state, presence: true

  has_many :events, through: :attendees
  has_many :comments
end
