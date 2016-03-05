# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with: Bill Deng.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array (list of numbers)
# Output: number
# Steps to solve the problem.
# 	Create variable to store the sum of all numbers on the list
#   Go through each number on the list
#     Add it to the variable we created
#   Output the sum

# 1. total initial solution

def total(list)
  
  sum = 0
  
  for i in list
    sum = sum + i
  end
  p sum
  
end

# 3. total refactored solution

def total(list)

  p list.reduce(:+)
  
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array (list of strings)
# Output: string (sentence)
# Steps to solve the problem.
# transform list into a sentence by concatenating array elements, then capitalizing and adding a period to the end

# 5. sentence_maker initial solution

def sentence_maker(array_of_strings)

  sentence = array_of_strings[0].capitalize
  
  for i in array_of_strings[1..-1]
    sentence += " " + i
  end 
  p sentence + "."
  
end

# 6. sentence_maker refactored solution
def sentence_maker(array_of_strings)

    p array_of_strings.join(' ').capitalize + "."

  end


