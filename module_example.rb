# This time, use a module instead of inheritance to DRY up the code.
# Bonus: Read more about the distinction between class composition and 
# module mixins (both are an alternative to class inheritance): 
# http://stackoverflow.com/questions/15754768/when-do-we-use-ruby-module-vs-using-class-composition
# inheritance works really well when things go with each other exactly.  A bird is a mammal, blah blah blah.


module Moveable # This module is not a class, def initialize has nothing to do with
  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car
  include Moveable

  def initialize
    @speed = 0
    @direction = 'north'
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include Moveable
  
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def ring_bell
    puts "Ring ring!"
  end
end


bike = Bike.new
p bike
bike.accelerate
p bike