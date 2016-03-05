# Factorial

# I worked on this challenge with Bill Deng.


# Your Solution Below

def factorial(number)
  result = 1
  while number >= 1
    result  = result * number
    number = number - 1
  end
p result
end