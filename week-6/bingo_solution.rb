# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 2 hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # define a method that selects a random letter from the word "bingo" and a random integer between 0 and 100

# Check the called column for the number called.
  # columns are equal to index numbers in the nested arrays; so:
  # if B is called, check index 0 of all arrays; if I is called, check index 1, etc.

# If the number is in the column, replace with an 'x'
  # check only the column called. If random number is equal to number called, replace with "X"

# Display a column to the console
  # print the numbers in all arrays with the same index as the letter called

# Display the board to the console (prettily)
  # print all five arrays to the board with the number replaced with "X"

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call
#     columns = [:B, :I, :N, :G, :O]
#     @random_letter = columns.shuffle[0]
#     @random_number = rand(1...100)
#     bingo_call = @random_letter.to_s + @random_number.to_s
#     puts bingo_call
#   end
  
#   def check
#       if @random_letter == :B
#           @bingo_board.each do |space|
#               if space[0] == @random_number
#                   space[0] = "X"
#               end
#             p space[0]
#           end
#       elsif @random_letter == :I
#           @bingo_board.each do |space|
#               if space[1] == @random_number
#                   space[1] = "X"
#               end
#             p space[1]
#             end
#         elsif @random_letter == :N
#             @bingo_board.each do |space|
#                 if space[2] == @random_number
#                     space[2] = "X"
#                 end
#             p space[2]
#             end
#         elsif @random_letter == :G
#             @bingo_board.each do |space|
#                 if space[3] == @random_number
#                     space[3] = "X"
#                 end
#             p space[3]
#             end
#         else
#             @bingo_board.each do |space|
#                 if space[4] == @random_number
#                     space[4] = "X"
#                 end
#             p space[4]
#             end
#         end
#     end
    
#     def play_bingo
#         call
#         check
#         puts " "
#         @bingo_board.each_slice(1) { |x|
#             puts x.join(" ")
#         }
#     end

# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    columns = [:B, :I, :N, :G, :O]
    @random_letter = columns.sample
    @random_number = rand(1...100)
    bingo_call = @random_letter.to_s + @random_number.to_s
    puts bingo_call
  end
  
  def check
      if @random_letter == :B
          @bingo_board.each do |space|
              if space[0] == @random_number
                  space[0] = "X"
              end
            p space[0]
          end
      elsif @random_letter == :I
          @bingo_board.each do |space|
              if space[1] == @random_number
                  space[1] = "X"
              end
            p space[1]
            end
        elsif @random_letter == :N
            @bingo_board.each do |space|
                if space[2] == @random_number
                    space[2] = "X"
                end
            p space[2]
            end
        elsif @random_letter == :G
            @bingo_board.each do |space|
                if space[3] == @random_number
                    space[3] = "X"
                end
            p space[3]
            end
        else
            @bingo_board.each do |space|
                if space[4] == @random_number
                    space[4] = "X"
                end
            p space[4]
            end
        end
    end
    
    def play_bingo
        call
        check
        puts " "
        @bingo_board.each_slice(1) { |x|
            puts x.join(" ")
        }
    end

end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.play_bingo


#Reflection
=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
This challenge was less difficult to pseudocode than usual because part of the code was
outlined for me. I think I'm developing a style, but it needs work; I find my pseudocode wordy
and tend to include too many words of actual code.

What are the benefits of using a class for this challenge?
Using a class for this challenge allowed for some of the necessary variables like @random_letter
and @bingo_board to be accessed outside the methods where they were created.

How can you access coordinates in a nested array?
You can access data in nested arrays by accessing elements from outermost
to innermost dimension. For example, given the array upper_midwest_states = ["WI", "MN", "IA", ["ND", "SD"]]
you could access the element "SD" with upper_midwest_states[3][1].

What methods did you use to access and modify the array?
To access the array I iterated over it using #each. To modify the array I simply reassigned elements
within it.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
I learned about the .sample method while refactoring. It's like #shuffle except it also selects
an element from the array. I also found out about when/case statements for the first time. It seems
like they can be used where one would otherwise use if/elsif/else, except with the equality statement and the "end"
after each condition not needed.

How did you determine what should be an instance variable versus a local variable?
If I needed to call something outside the method where it was created, I used an instance variable; if I needed
the variable to exist only in a certain method in the class, I used a local variable.

What do you feel is most improved in your refactored solution?
By using the when/case statement instead of all those elsifs, I was able to cut out several lines of code
and eliminate some confusion I was having as to whether I had enough end lines.

=end
