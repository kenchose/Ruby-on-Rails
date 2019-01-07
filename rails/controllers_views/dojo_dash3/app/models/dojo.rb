class Dojo < ActiveRecord::Base
  validates :branch, :street, :city, presence: true
end
