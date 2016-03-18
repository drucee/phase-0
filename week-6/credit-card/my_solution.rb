# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Jason Milfred.
# I spent [2.5] hours on this challenge.

# Pseudocode

# Input: a 16-digit integer
# Output: True or False based on the results of the checksum
# Steps:
# if number is not 16 digits, raise an error
# split up the digits into an array of strings
# convert the digits back into integers
# double every other digit, starting with the second-to-last
# sum all digits
# check to see if result is a multiple of ten; if so, return True; if not, return False


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(number)
    @number = number
    if number.to_s.length != 16
      raise ArgumentError.new("Not a valid card number")
    end
  end
  def auth_splitter
    @array_of_digits = @number.to_s.split("")
  end
  def auth_doubler
      @integer_array = @array_of_digits.map { |x| x.to_i}
      @doubled_array = @integer_array.each_with_index.map do |value, index|
        if index.even?
          value * 2
        else
          value
        end
      end  
  end
  def sum_digits
    @split_array = @doubled_array.join.to_s.split("").map{|string| string.to_i}
    @split_and_summed = @split_array.inject(0){|sum, x| sum + x}
  end
  def mult_of_ten?
    @split_and_summed % 10 == 0
  end 
  def check_card
    auth_splitter
    auth_doubler
    sum_digits
    mult_of_ten?
  end
end

new_card = CreditCard.new(4410493049593004)
p new_card.check_card
# Refactored Solution

# we found that refactoring here might require us to chain too many methods together
# with our current code; if we could receive any guidance on how this might be refactored
# that would be very helpful!






# Reflection
=begin

What was the most difficult part of this challenge for you and your pair?
This was a very difficult challenge for us in general. We found that we had a lot
of trouble remembering code syntax and keeping our data types straight (strings, integers, arrays).
Also, we ran into some difficulty trying to double every other digit in the array, as we were
having trouble finding a method that would both iterate and return something that would be useful in the next method.

What new methods did you find to help you when you refactored?
After spending so long just trying to get our initial solution to work we didn't really leave much time for refactoring,
but this was actually the first time that we put the #inject method into practice in an assignment.

What concepts or learnings were you able to solidify in this challenge?
We were able to solidify our concept of building a class with nested methods inside, such that we could call any or all
of those methods on a class object. We also got a lot of practice researching in the Ruby docs.
=end