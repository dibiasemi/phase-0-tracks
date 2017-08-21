# Psuedocode
# Create a database that allows users to store, view, manipulate recipes for a meal (breakfast,lunch.dinner)
# Create Database Tables (Recipe, Cuisine)

# Possible Methods
# Meal (breakfast,lunch,dinner)
# Name of dish
# Helpings (number of people it will serve)
# Total time(mins.) (Prep and cook time combined)
# Vegetarian (TRUE OR FALSE)
# Recipe (Ingrediants and Instructions)

# User Input Methods:
# Input Method for recipes
# Input Method for cusine

# Ability to view recipes after searching
# Create Display Methods
# Create Navigation Method
# Create Last Entry Method

# Ability to alter/update recipes method

require 'sqlite3'

db = SQLite3::Database.new("recipe_book.db")
db.results_as_hash = true

create_table_cuisine = <<-SQL
  CREATE TABLE IF NOT EXISTS cuisine(
  id INTEGER PRIMARY KEY,
  cuisine VARCHAR(255),
  FOREIGN KEY(recipes) REFERENCES cuisine()
  )
SQL

create_table_recipes = <<-SQL
  CREATE TABLE IF NOT EXISTS recipes(
    id INTEGER PRIMARY KEY,
    meal VARCHAR(255,)
    name_of_dish VARCHAR(255),
    helpings VARCHAR(255),
    total_time_mins INT,
    vegatarian BOOLEAN,
    recipe VARCHAR(255),
    cuisine_id INT
    FOREIGN KEY (cuisine_id) REFERENCES cuisine(id)
  )
SQL

db.execute(create_table_recipes)
db.execute(create_table_cuisine)


def input_new_recipe(db, meal, name_of_dish, helpings, total_time_mins, vegatarian, recipe, cuisine_id)
  puts " New Recipe "
  puts "Please indicate type of meal (breakfast, lunch, dinner)"
  meal = gets.chomp
  puts "Please Provide the Name of the Dish"
  name_of_dish = gets.chomp
  puts "Please indicate the number of helpings:"
  helpings = gets.chomp.to_i
  puts "What is the Total Time in Minutes (prep time and cook time combined?)"
  total_time_mins = gets.chomp.to_i
  puts "Whts is the cusine? (1. Italian, 2. Mexican, 3. Spanish, 4. American)"
  user_input = gets.chomp.to_i
  if user_input == 1
    cuisine_id = 1
  elsif user_input == 2
    cuisine_id = 2
  elsif user_input == 3
    cuisine_id = 3
  elsif user_input == 4
    cuisine_id = 4
  end

  db.execute("INSERT INTO entries (meal, name_of_dish, helpings, total_time_mins, vegatarian, recipe, cuisine_id) VALUES (?, ?, ?, ?, ?, ?, ?);", [meal, name_of_dish, helpings, total_time_mins, vegatarian, recipe, cuisine_id])
end

# Do I need individual methods in order to make this navigation function ?????
# def navigation
#   puts "What would you like to do?"
#   puts "Input New Recipe - Select 1"
#   puts "View All Recipes - Select 2"
#   puts "View Recipe by Name - Select 3"
#   puts "View Recipes by Cusine - Select 4"
#   puts "View Recipes by Meal - Select 5"
# end



# def display_recipe_by_meal(meal)
#   puts " All Journal Entries For #{meal} "
#   search_recipe_book = db.execute("SELECT * FROM entries WHERE user = ?;", [meal])
# end


