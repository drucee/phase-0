# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
p array[1][1][2]
p array[1][1][2][0]
# ============================================================



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
p hash[:outer][:inner]["almost"][3]
# ============================================================



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
p nested_data[:array][1]
p nested_data[:array][1][:hash]
# ============================================================



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |element|
    if element.kind_of?(Array)
        element.map! do
            |inner| inner + 5
    end
    else
        element + 5
    end
end

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# Reflection:
=begin
	
What are some general rules you can apply to nested arrays?

You can access data in nested arrays by accessing elements from outermost
to innermost dimension. For example, given the array upper_midwest_states = ["WI", "MN", "IA", ["ND", "SD"]]
you could access the element "SD" with upper_midwest_states[3][1].

What are some ways you can iterate over nested arrays?

You can iterate over nested arrays using recursion (which I don't think we've learned much about yet) or
using the #kind_of? method, which you can use to execute a block of code on all elements for which Array = True.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
I reused the #map! method to iterate over the nested array in Release 3, because we needed a destructive method
(the instructions said to modify the original array). I attempted to refactor with the #flatten method instead of the
if-then statement using #kind_of?, but found that the #flatten method iterated over every element in the entire data structure,
	but did not retain the original nested structure.
	
=end
