class Event < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :users, through: :attendees
  
end
# if e.users.include ? (current_user)
#   means threy r already attemdint therefpre cvan  cancerl

#   elsde
#   can join