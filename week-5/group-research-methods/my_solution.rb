# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


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
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


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