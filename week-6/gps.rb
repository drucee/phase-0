# Your Names
# 1) Frank Lam
# 2) Evan Druce

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

#def serving_size_calc(item_to_make, num_of_ingredients)
def serving_size_calc(item_to_make, num_of_people)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  if menu.include?(item_to_make) == false
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
#
 # error_counter = 3
#
 # menu.each do |food|
  #  if menu[food] != menu[item_to_make]
   #   error_counter += -1
    #end
  #end
#
 # if error_counter > 0
  #  raise ArgumentError.new("#{item_to_make} is not a valid input")
 # end
  

  #serving_size = menu.values_at(item_to_make)[0]
  serving_size = menu[item_to_make]
  remaining_people = num_of_people % serving_size

  #case remaining_people
  #when 0
  if remaining_people == 0
    return "Calculations complete: Make #{num_of_people / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_people / serving_size} of #{item_to_make}, you have #{remaining_people} leftover people. Suggested baking items: #{remaining_people} cookies."
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?
I learned that it is important to use variable names and method names in your code that are intuitive
for the reader. Vague names like "library" and "num_of_ingredients" don't really
give much of an indicator as to what the code is actually going to do. Also, enumerables can be useful for 
streamlining code because many of them can do things in one line that otherwise
would take many more lines. 
Did you learn any new methods? What did you learn about them?
I learned about the .include? method which is useful for querying a hash to see whether it
contains a given key.
What did you learn about accessing data in hashes?
Accessing the value for a given key in a hash can be done simply by querying hash[key_name].
What concepts were solidified when working through this challenge? This challenge helped
solidify the concept of using enumerables to create readable code, as well as the concept of making
variable and method names intuitive because the code you write will often be worked on by many different
people or teams and each of them needs to be able to intuit what the code does.
=end
