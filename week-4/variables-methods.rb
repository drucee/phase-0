puts 'What is your first name?'
first_name = gets.chomp
puts 'What is your middle name?'
middle_name = gets.chomp
puts 'What is your last name?'
last_name = gets.chomp
puts 'Good evening' + ' ' + first_name + ' ' + middle_name + ' ' + last_name + '!'

puts 'What is your favorite number?'
number = gets.chomp
num_int = number.to_i + 1
puts num_int.to_s + ' is a bigger, better favorite number!'

=begin
How do you define a local variable?
	variable_name = variable_value
How do you define a method?
	def method_name
		[your method here]
	end
What is the difference between a local variable and a method?
	A local variable is a "container" in which to store a value. A method is a set of actions that you want to do with one or several variables.
How do you run a ruby program from the command line?
	ruby program_name.rb (where program_name is the filename of the program you want to run)
How do you run an RSpec file from the command line?
	rspec spec_file_name.rb (where spec_file_name is the name of the rspec file, not the name of the Ruby file you want to run it on)
What was confusing about this material? What made sense?
	The most confusing thing about this material was keeping integers, floats, and strings straight in order that I could use them in methods! I also had a bit of a snag where I forgot that puts doesn't actually return any values.
Address exercise solution: https://github.com/drucee/phase-0/blob/master/week-4/address/my_solution.rb
Math exercise solution: https://github.com/drucee/phase-0/blob/master/week-4/math/my_solution.rb
=end
