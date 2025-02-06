# Continue your work with the amusement park, you are tasked with writing some utility
# methods to facilitate checking if an attendee can use a ride.

# Task 1 Check if an attendee has a ride pass:
# Implement the Attendee#has_pass? method to return a boolean (true/false) value 
# based on the presence of a ride pass.
# Attendee.new(100).has_pass?
# => false
#
# Task 2 Check if an attendee fits a ride:
# Implement the Attendee#fits_ride? method to see if an attendee fits a ride based on 
# their height. The ride's required minimum height is provided as an argument. An attendee 
# must have height greater than or equal to ride's required minimum height.
# Attendee.new(140).fits_ride?(100)
# => true
#
# Task 3 Check if an attendee is allowed to ride:
# Implement the Attendee#allowed_to_ride? method to see if an attendee is allowed to go on a ride. 
# The ride's required minimum height is provided as an argument. An attendee must have a ride pass 
# and be able to fit the ride.
# attendee = Attendee.new(100)
# attendee.issue_pass!(42)
# attendee.allowed_to_ride?(120)
# => false
#
# class Attendee
# def initialize(height)
#   @height = height
# end
# 
# def issue_pass!(pass_id)
#   @pass_id = pass_id
# end
# 
# def revoke_pass!
#   @pass_id = nil
# end
# 
# # Do not edit above methods, add your own methods below.
# 
# def has_pass?
#   raise 'Please implement the Attendee#haspass? method'
# end
# 
# def fits_ride?(ride_minimum_height)
#   raise 'Please implement the Attendee#fits_ride? method'
# end
# 
# def allowed_to_ride?(ride_minimum_height)
#   raise 'Please implement the Attendee#allowed_to_ride? method'
# end
# end
#

class Attendee
  def initialize(height)
    @height = height
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  # Do not edit above methods, add your own methods below.

  def has_pass?
    !!@pass_id
  end

  def fits_ride?(ride_minimum_height)
    @height >= ride_minimum_height
  end

  def allowed_to_ride?(ride_minimum_height)
    has_pass? && fits_ride?(ride_minimum_height)
  end
end

# Creating an attendee with height 100, no pass issued
pp Attendee.new(100).has_pass? 
# Expected output: false (no pass issued)

# Creating an attendee with height 140 and checking if they fit a ride requiring 100
pp Attendee.new(140).fits_ride?(100) 
# Expected output: true (140 >= 100)

# Creating an attendee with height 100 and issuing a pass with ID 42
attendee = Attendee.new(100)
pp attendee.issue_pass!(42) 
# Expected output: 42 (pass issued successfully)

# Checking if the attendee (height 100, pass 42) can ride a ride requiring 120
pp attendee.allowed_to_ride?(120) 
# Expected output: false (too short for the ride)

=begin

Explanation of !!pass_id in Ruby
The double negation (!!) in Ruby is a way to convert a value into a boolean (true or false).

Breaking It Down
!pass_id → The first ! (not operator) negates the value:
If pass_id is nil or false, !pass_id becomes true.
If pass_id is any other value, !pass_id becomes false.
!!pass_id → The second ! negates it again, converting it into a proper boolean:
If pass_id was nil or false, it results in false.
If pass_id had a value (like a number or string), it results in true.

=end
