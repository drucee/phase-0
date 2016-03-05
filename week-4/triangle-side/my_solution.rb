# I worked on this challenge with: Alex Wen.


# Your Solution Below

def valid_triangle?(a, b, c)
  if a + b > c and b + c > a and c + a > b
  	true
  else false
  end
end