# Instructions:
# Working with an amusement park, you've been handed a specification to design 
# a system to administer attendance and rides. You've been tasked with modeling 
# the Attendee (person visiting the park).
#
# Task 1 Make New Attendees:
# Implement the Attendee#initialize method of the Attendee class, it should 
# take a height (in centimeters) and store it as an instance variable.
#
# Task 2 How tall is the attendee:
# Implement the Attendee#height getter of the Attendee class, it should return 
# the instances height.
#
# Task 3 What is the ride pass ID:
# Not all attendees have bought a ride pass, but we need to know if they have 
# a pass or not. Implement the Attendee#pass_id getter for the Attendee class, 
# it should return the instance's pass_id or nil if the Attendee doesn't have one.
#
# Task 4 Allow People to buy a pass:
# Implement Attendee#issue_pass! to mutate the state of the instance, and set 
# the pass id instance variable to the argument. It should return the pass id.
#
# Task 5 Revoke the Pass:
# Some guests break the rules with unsafe behavior, so the park wants to be 
# able to revoke passes. Implement Attendee#revoke_pass! to mutate the state of 
# the instance, and set the pass id to nil.

class Attendee
  def initialize(height)
    @height = height
  end

  def height
    @height
  end

  def pass_id
    @pass_id
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end
end

pp Attendee.new(106)
pp Attendee.new(106).height
pp Attendee.new(106).pass_id
attendee = Attendee.new(106)
pp attendee.issue_pass!(42)
pp attendee.pass_id
attendee = Attendee.new(106)
pp attendee.issue_pass!(42)
pp attendee.revoke_pass!
pp attendee.pass_id