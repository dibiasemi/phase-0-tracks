#
# write a program that will allow an interior designer to enter the details of a given client: the client's name, age, number of children, decor theme, and so on
# create a hash which that stores information provided by the users

# Store data and print the hash back out to the screen when the designer has answered all of the questions.
# Give the user the opportunity to update a key by asking the user if the printed data is correct otherwise they may change their answer by choosing a choice

# print the latest version of the hash, and exit the program.

puts "Hello, Welcome to Designs by Michelle"

customer_info = {
    name:"n/a",
    age: 0,
    children:"n/a",
    phone_number: 0,
    email:"n/a",
    location: "n/a",
    theme: "n/a",
    rooms: "n/a",
    color: "n/a",
}

puts "What is your name?"
customer_info[:name] = gets.chomp

puts "How old are you?"
customer_info[:age] = gets.chomp.to_i

children = false
until children
puts "Do you have any children (y/n)?"
customer_info[:children] = gets.chomp
  if customer_info[:children] == "y"
    puts "Perfect, we can ensure all designs are kid friendly"
    children = true
  elsif customer_info[:children] == "n"
    puts "Heck yeah! Bring on all things beautiful and glass"
    children = true
   end
end

puts "What is the best phone number to reach you?"
customer_info[:phone_number] = gets.chomp.to_i

puts "Additionally, please provide an email address so we can send you a confirmation email with your design information"
customer_info[:email] = gets.chomp

puts "What city do you live in?"
customer_info[:location] = gets.chomp

puts "What theme are we going for?"
customer_info[:theme] = gets.chomp

puts "How many rooms are you thinking about designing?"
customer_info[:rooms] = gets.chomp

puts "What color do you wish you had more of in your home??"
customer_info[:color] = gets.chomp

puts customer_info

puts "Please review and verify that The following information is all correct (y/n)?"
review = gets.chomp
  if review == "y"
    puts "Thank you! Please keep an eye out for email updates!"
    puts customer_info
  elsif review == "n"
    puts "Uh oh, is there something we missed? Please let me know what you'd like to change?
    name\n
    age\n
    children\n
    phone_number\n
    email\n
    location\n
    theme\n
    rooms\n
    color\n"
  end
  change = gets.chomp

if change == "name"
  puts "What is your name?"
  customer_info[:name] = gets.chomp

elsif change == "age"
  puts "How old are you?"
  customer_info[:age] = gets.chomp.to_i

elsif change == "children"
puts "Any children we missed? (y/n)?"
customer_info[:children] = gets.chomp
  if customer_info[:children] == "y"
  elsif customer_info[:children] == "n"
  end

elsif change == "phone_number"
  puts "What is the best phone number to reach you?"
  customer_info[:phone_number] = gets.chomp.to_i

elsif change == "email"
puts "Please provide the best email address to reach you, so we can send you a confirmation email with your design information"
customer_info[:email] = gets.chomp

elsif change == "location"
  puts "Did you just move? No problem, what city do you live in?"
  customer_info[:location] = gets.chomp

elsif change == "theme"
  puts "Did you change your mind about theme? No problem, let us know!"
  customer_info[:theme] = gets.chomp

elsif change == "rooms"
  puts "Would you like to add additional rooms? If so, how many?"
  customer_info[:rooms] = gets.chomp

elsif change == "color"
  puts "Did you decide on a color you love more??"
  customer_info[:color] = gets.chomp
end

puts customer_info