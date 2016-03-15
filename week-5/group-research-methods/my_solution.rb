# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(array, letter)
 new_array = []
 array.each do | item |
  if item.to_s.include?(letter)
    new_array << item
  end
end
p new_array
end
my_array_finding_method(i_want_pets, "a")

#---------------------------------------
def my_hash_finding_method(hash, number)
 new_array = []
 hash.each do | name, age |
  if age == number
    new_array << name
  end
end
p new_array
end
my_hash_finding_method(my_family_pets_ages, 4)

# # Identify and describe the Ruby method(s) you implemented.

# # I used .include?() method which returns true if the passed argument exists in the variable that .include?() was called on.
# Example: name = "Andrey"   name.include?("d")  => true
# # I also used << which basically just appends(adds) something to the end of an array.
#
#---------------------------------------------------------

# # Person 2
def my_array_modification_method!(source, thing_to_modify)
  new_array = source
  new_array[2] += thing_to_modify
  new_array[7] += thing_to_modify
  return new_array
end

def my_hash_modification_method!(source, thing_to_modify)
 new_array = source
 source.each {|k,v|
  new_array[k] = v + thing_to_modify
 }
 return new_array
end


# # Identify and describe the Ruby method(s) you implemented.
# #=> I just use each to iter the hash :)
# #
# #

# Person 3
def my_array_sorting_method(source)
  source.sort_by {|word| word.to_s}
end

def my_hash_sorting_method(source)
  def my_hash_sorting_method(source)
   source.sort_by { |name, age| [age, name] }
end

# Identify and describe the Ruby method(s) you implemented.
# To sort the array I used the #sort_by method. This method iterates over
# each element in the array using the given code block. Here that code block is
# sorting alphabetically. Since there are also integers in the array, I first need
# to convert them to strings using the #to_s method before I can sort them.
# 
# To sort the hash I also used the #sort_by method, passing in both the keys
# and values to iterate over, and then sorting by the values. In order to make the
# resulting arrays sort alphabetically by key in the case of a tie (two values
# being the same), I had the #sort_by method reverse the keys and values for each
# entry in the hash, and then compare the original key-value pairs to the reversed ones.
# Then, in case of a difference, #sort_by would return the key-value pairs sorted according
# to reverse order (which would correct the non-alphabetization).
#


# Person 4
 def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if {|name| name.to_s.include? thing_to_delete}
end


def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if { |name,age| name.to_s.include? thing_to_delete}
end


# # Identify and describe the Ruby method(s) you implemented.
# # The delete_if method deletes the element depending on a condition
# # The to_s method insures that we're comparing two strings
# # The include? method is the condition that we test.


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#