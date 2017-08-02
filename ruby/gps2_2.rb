require "colorize"
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # create empty hash for grocery list
  # add user input into grocery list
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def create_list(food)
  grocery_list = {}
  food_array = food.split(' ')
  food_array.each do |item|
    grocery_list[item] = 1
  end
  p grocery_list
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: add user input for item to be added to grocery list
# output: new grocery list hash

def add_item(grocery_list, item_to_add, optional_quantity = 1)
  grocery_list[item_to_add] = optional_quantity
  p grocery_list
end

# Method to remove an item from the list
# input: master_list, item to delete
# steps: remove item user wants to delete
# output: new grocery list (with the item removed)

def remove_item(grocery_list, item_to_delete)
  grocery_list.delete(item_to_delete)
  p grocery_list
end

# Method to update the quantity of an item
# input: master list, item to update, updated quantity
# steps: locate item to update in grocery list
# update quantity
# output: new grocery list (with updated quantity)

def update_quantity(grocery_list, item_to_update, updated_quantity)
  grocery_list[item_to_update] = updated_quantity
  p grocery_list
end

# Method to print a list and make it look pretty
# input: grocery list
# steps: Grocery List:
      # carrots : 3
# output: list

def print_list(grocery_list)
  puts "Grocery List:".red
  grocery_list.each do |item, quantity|
    puts "#{item} : #{quantity}".blue
  end
end

master_list = create_list("carrots apples cereal pizza")

add_item(master_list,"lemonade", 2)
add_item(master_list,"tomatoes", 3)
add_item(master_list,"onions")
add_item(master_list,"ice cream", 4)

remove_item(master_list,"lemonade")
update_quantity(master_list, "ice cream", 1)
print_list(master_list)


# What did you learn about pseudocode from working on this challenge?
#   Identify an input and output first
#   Keep your pseudocode language agnostic (no Ruby method names, for example).
#   It should read somewhat like English.
#   Capitalize key words like IF, ELSE, UNTIL, WHILE, CASE, etc.
#   Indent sections that are dependent on lines above it

# What are the tradeoffs of using arrays and hashes for this challenge?

# What does a method return?

# What kind of things can you pass into methods as arguments?

# How can you pass information between methods?

# What concepts were solidified in this challenge, and what concepts are still confusing?