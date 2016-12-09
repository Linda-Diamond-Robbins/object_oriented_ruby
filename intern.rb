# 1.  Create a method in the Manager class called give_all_raises 
# that loops through each of the manager’s employees and 
#2 gives them a raise (using the give_annual_raise method). 
#3 Demonstrate how it works.
# 4 Create a method in the Manager class called fire_all_employees that 
# loops through each of the manager’s employees and changes their active 
# status to false. (note - you’ll have to modify the Employee class in order to accomplish this!)

# Bonus: What happens when you define a method in the Employee and Manager 
# class with the same name? Read more about method overriding here: http://rubylearning.com/satishtalim/ruby_overriding_methods.html (edited)
# look up attr_reader and attr_writer -- attr_accessor means both read and write
#really know what it means--you get to choose what is readable and what is writable.  Protecting your code so YOU don't make a mistake.

require './employee.rb'
require './email_reportable.rb'

class Intern < Employee
  include EmailReportable
end