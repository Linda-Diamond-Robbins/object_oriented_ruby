class Employee
  attr_reader :first_name, :last_name
  attr_accessor :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end




# Create a new file called module_example.rb and open it in Sublime.
# Copy the Car and Bicycle class into your file (same as previous exercise): https://gist.github.com/peterxjang/e9b69b4de36b2c41ef4b 
# This time, use a module instead of inheritance to DRY up the code.

# Bonus: Read more about the distinction between class composition and module mixins (both are an alternative to class inheritance): http://stackoverflow.com/questions/15754768/when-do-we-use-ruby-module-vs-using-class-composition