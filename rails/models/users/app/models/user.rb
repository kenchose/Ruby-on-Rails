class User < ActiveRecord::Base
	validates :first_name, :last_name, :email, :age, presence: true
	validates :age, numericality: true, { greater_than_or_equal_to: 10, less_than_or_equal_to: 150 }
	validates :first_name, :last_name, length: { in: 2..100}
end

# users sorted by their first name (order by first_name DESC)
		# User.all.order('first_name DESC')

# Get the record of the user whose id is 3 and UPDATE the person's last_name to something else. Know how to do this directly in the console using .find and .save.
# 		u = User.find(3)
# 		u.last_name = 'anything'
# 		u.save

# Know how to delete a record of a user whose id is 4
# 		User.find(4).destroy OR User.find(4).delete