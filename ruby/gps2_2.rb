# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
def create_list(items_string="")
# steps: 
  grocery_list = {}
  # split the item string into array elements
  items_array = items_string.split(" ")
  # loop through the items array and use each item as a key fro grocery_list hash
  # assign same default value for each item in string
  items_array.each do |item|
  # set default quantity
    grocery_list[item] = 0
  end
  # print the list to the console [can you use one of your other methods here?]
  p grocery_list
  # return grocery_list
# output: hash
  grocery_list
end

# Method to add an item to a list
# input: list, item name and optional quantity.
def add_item!(list, item, quantity=0)
# steps: list and then index into the item name = quantity
  list[item] = quantity
# output: 
end
# Method to remove an item from the list
# input: list and item name
def remove_item!(list, item)
# steps: use hash delete method to delete the item
  list.delete(item)
# output:
end
# Method to update the quantity of an item
# input: list, item name and optional quantity.
def update_item_quantity!(list, item, quantity=0)
# steps: list and then index into the item name = quantity
  add_item!(list, item, quantity)  
# output:
end
# Method to print a list and make it look pretty
# input: list
def pretty_print_list(list)
  puts "Grocery List:"
  # steps: loop through keys and values of the list print.
  list.each do |key, value|
    puts "#{key}: #{value}"
  end
end

new_grocery_list = create_list

add_item!(new_grocery_list, "Lemonade", 2)
add_item!(new_grocery_list, "Tomatoes", 3)
add_item!(new_grocery_list, "Onions", 1)
add_item!(new_grocery_list, "Ice Cream", 4)

pretty_print_list(new_grocery_list)
puts ""

remove_item!(new_grocery_list, "Lemonade")

pretty_print_list(new_grocery_list)
puts ""

update_item_quantity!(new_grocery_list, "Ice Cream", 1)

pretty_print_list(new_grocery_list)
puts ""

# Release 5: Reflect

# What did you learn about pseudocode from working on this challenge?
#- I learned that pseudocode is SUPER important, and I need to do utilize it more.

# What are the tradeoffs of using arrays and hashes for this challenge?
#- They're very easy to iterate through. For example: If I used a string it would have required a lot more steps. 

# What does a method return?
#- A method will return the output of the actions being performed on the input entered on that item. 

# What kind of things can you pass into methods as arguments?
#- Strings, integers, Arrays, Hashes etc.

# How can you pass information between methods?
#- By calling a method inside that method. 

# What concepts were solidified in this challenge, and what concepts are still confusing?
#- Using multiple methods instead of trying to get one method to do everything. I still need to work on refactoring. 
