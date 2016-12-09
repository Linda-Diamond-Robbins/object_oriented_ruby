# Use inheritance to DRY up the classes. Note - a car is NOT a type of bicycle, and a bicycle is NOT a type of car!
# To test it, create a bicycle and car instance from your newly modified classes 
# (you can create them at the bottom of your file). First, have them accelerate. 
# Then, make sure a bike can “Ring ring!” and a car "Beeeeeeep!"
# dry = don't repeat yourself  
# So they are both types of transportation


#Exercise: Tuesday Night - Open the inheritance_example.rb file from the previous example.
# Add car specific attributes to the Car class (fuel, make, model, etc.) and 
#bicycle specific attributes to the Bicycle class (speed, type, weight, etc.). Use the super method to keep the initialize methods DRY.
# Open the store_item.rb file you created from the previous lesson.
# Some of your store items are food, which have a shelf life. Create a class called Food which inherits from your original class and has an additional property of shelf_life.

# Bonus: Read about the differences between redefining, overriding, and super. Complete the exercise at the end to get the tests to pass: https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/37-classes-inheritance/lessons/88-redefining-overriding-and-super
 

class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end

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

class Car < Vehicle
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new
bike.ring_bell
p bike
bike.accelerate
p bike