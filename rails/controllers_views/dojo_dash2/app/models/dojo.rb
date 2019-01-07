class Dojo < ActiveRecord::Base
  validates :branch, :street, :city, :street, presence: true
end
