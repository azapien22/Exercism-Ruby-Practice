=begin
Task 1 Define the expected oven time in minutes:
Define the Lasagna::EXPECTED_MINUTES_IN_OVEN constant that returns how many 
minutes the lasagna should be in the oven. According to the cooking book, 
the expected oven time in minutes is 40:

Task 2 Calculate the remaining oven time in minutez:
Define the Lasagna#remaining_minutes_in_oven method that takes the actual 
minutes the lasagna has been in the oven as a parameter and returns how many 
minutes the lasagna still has to remain in the oven, based on the expected 
oven time in minutes from the previous task.


Task 3 Calculate the preparation time in minutes:
Define the Lasagna#preparation_time_in_minutes method that takes 
the number of layers you added to the lasagna as a parameter and 
returns how many minutes you spent preparing the lasagna, assuming 
each layer takes you 2 minutes to prepare.

Task 4 Calculate the total working time in minutes:
Define the Lasagna#total_time_in_minutes method that takes two named 
parameters: the number_of_layers parameter is the number of layers you 
added to the lasagna, and the actual_minutes_in_oven parameter is the number 
of minutes the lasagna has been in the oven. The function should return how 
many minutes in total you've worked on cooking the lasagna, which is the sum 
of the preparation time in minutes, and the time in minutes the lasagna has 
spent in the oven at the moment.

class Lasagna
  def remaining_minutes_in_oven(actual_minutes_in_oven)
    raise 'Please implement the Lasagna#remaining_minutes_in_oven method'
  end

  def preparation_time_in_minutes(layers)
    raise 'Please implement the Lasagna#preparation_time_in_minutes method'
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    raise 'Please implement the Lasagna#total_time_in_minutes method'
  end
end
=end

class Lasagna
  EXPECTED_MINUTES_IN_OVEN = 40
  def remaining_minutes_in_oven(actual_minutes_in_oven)
    EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
  end

  def preparation_time_in_minutes(layers)
    layers * 2
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    preparation_time_in_minutes(number_of_layers) + actual_minutes_in_oven
  end
end