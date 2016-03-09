# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create a grocery list hash with items as keys and quantities as values
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash

def grocery_list(items)
  items_array = items.split(' ')
  
  # items_array.each_with_object(Hash.new(0)) do |item, list|
    # list[item] += 1
  # end
  items_hash = {}
  items_array.each do |item|
   items_hash[item] = 0
 end
 p items_hash
end

# Method to add an item to a list
# input: item name and optional quantity
# steps: push new key/value pair or item to the hash
# output: hash containing grocery list

#our_list = grocery_list("carrots apples cereal pizza pizza pizza pizza")

def add_item(our_list, item, quantity=nil)
  our_list.store(item, quantity)
  p our_list
end

#add_item(our_list, "peas", 2)

# Method to remove an item from the list
# input: item name
# steps: pop item from the list
# output: hash containing remaining items

def remove_item(our_list, item)
  our_list.delete(item)
  p our_list
end

#remove_item(our_list, "apples")

# Method to update the quantity of an item
# input: the item (key) and the new quantity (value)
# steps: reassign the value of a hash key
# output: hash containing updated items

def update_item(our_list, item, quantity)
  our_list[item] = quantity
  p our_list
end

#update_item(our_list, "cereal", 1)

# Method to print a list and make it look pretty
# input: the hash of a grocery list
# steps: print to console in a form other than just itself
# output: a pretty list


def print_list(our_list)
  our_list.each {|item, quantity| p "#{item}: #{quantity}"}
end

#print_list(our_list)

second_list = grocery_list("lemonade tomatoes onions ice_cream")
update_item(second_list, "lemonade", 2)
update_item(second_list, "tomatoes", 3)
update_item(second_list, "onions", 1)
update_item(second_list, "ice_cream", 4)
remove_item(second_list, "lemonade")
update_item(second_list, "ice_cream", 1)
print_list(second_list)

=begin
What did you learn about pseudocode from working on this challenge?
I learned that pseudocode can be quite helpful in figuring out how to
proceed in a multi-step, complicated challenge like this one.
What are the tradeoffs of using arrays and hashes for this challenge?
We used a hash for our grocery list, because it allowed us to associate
items with quantities rather easily.
Arrays are more aesthetically pleasing from the outset. If we needed 
to remember the order of items using index numbers, an array would have
been a better choice.
What does a method return?
Methods return the value of the last statement executed in the method.
What kind of things can you pass into methods as arguments?
You can pass strings, hashes, integers, floats, or variables declared
outside methods into methods as arguments.
How can you pass information between methods?
You can pass information between methods by assigning a local variable
to what is returned by a method, and then using that variable as an
argument in another method.
What concepts were solidified in this challenge, and what concepts are still confusing?
This challenge solidified my ability to work with hashes; however, I am still finding
difficulty in creating new hashes or arrays from strings like in the first method..
  
=end