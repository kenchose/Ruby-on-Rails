class Message < ActiveRecord::Base
  validates :comment, presence: true, length: {minimum:10}
  belongs_to :user
  has_many :comments
end
