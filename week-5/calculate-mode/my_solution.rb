# Calculate the mode Pairing Challenge

# I worked on this challenge with: Renan Martins

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? array of numbers or strings
# What is the output? (i.e. What should the code return?) array of the most frequent values
# What are the steps needed to solve the problem? keep track of key-value pairs in hash, with the keys being the individual items in the array, and the values being the frequencies
# Set frequency default value to 0 for each key
# For each element in the array, add 1 to frequency
# Return the key that corresponds to the highest frequency value, or multiple keys if  there is more than one key with the highest frequency


# 1. Initial Solution


def mode(array)
  table = Hash.new(0)
  for a in array
    table[a] = table[a] + 1
  end
  highest_freq = 0
  table.each do |k, v|
    if v > highest_freq
      highest_freq = v
    end
  end
  modes_hash = table.select{|k, v| highest_freq == v}
  modes = modes_hash.keys
end


# 3. Refactored Solution
def mode(array)
  # Holds each element in the array as a key in the new hash
  table = Hash.new(0)
  
  # Updates frequency for each occurrence
  for a in array
    table[a] += 1
  end
  
  # Determine the maximum frequency
  highest_freq = table.values.max
  
  # Returns the keys for which the value is the highest
  return table.select{ |k, v| highest_freq == v }.keys
end

# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
We decided to use a hash to store the elements in the array as keys, because
we could then iterate over those keys and store the results as values in the hash.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
We were more successful in this challenge because we recognized that the problem would
require similar steps to other problems we had encountered in the past.

What issues/successes did you run into when translating your pseudocode to code?
We wrote detailed enough pseudocode that we were able to break it down into steps
that we could translate into code segments that we were familar with. However, I struggled
with remembering code syntax (but my pair helped a lot with this).

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
In the beginning we iterated through the array to populate the keys, and
then used an each method that we had used in the past to find a maximum value
from an array to populate the values. Then we created a new hash containing only
the most frequent keys associated with their frequency, and then used the .keys
method to return an array of those keys alone. When we refactored we found that we
could chain some of our methods, and that we didn't have to create a new variable
to use the .select method.
=end