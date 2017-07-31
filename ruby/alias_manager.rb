
# create a method that will iterate through each letter of the alphabet for a given word
# first the method will split the word
# As the method iterates, if it comes across a vowel, it will switch it with another vowel and continue running until it reaches the end of the word
# As the method iterates, if not vowels are found then it will go through the alphabet and change all consonants to the next consonant the alphabet
# Once the process is complete, the method will join the splitted word back together
# add a driver code for user input; first and last name.
# print new secret name after running method


def algorithm(name)

  vowels="aeiou"
  #alpha with no vowels
  alpha="bcdfghjklmnpqrstvwxyz"

  name_split=name.split("")
  new_name=[ ]

  #maps out each splitted letter similar to the example in 5.5
  name_split.map! {|letter|
    if vowels.include?(letter)
      new_name << vowels[vowels.index(letter)+1]
    elsif alpha.include?(letter)
      new_name << alpha[alpha.index(letter)+1]
    elsif letter == "z" #edge case for consonants
      new_name << "b"
    elsif letter == "u" #edge case for vowels
      new_name << "a"
    elsif letter == " "
      new_name << " "
    end }
    new_name.join("").split.map{|letter| letter.capitalize}.join(" ")
end


#User input
secret_name={}
while true
  puts "What is your first name?"
        first_name=gets.chomp.downcase
  puts "What is your last name?"
        last_name=gets.chomp.downcase
        full_name=first_name+" "+last_name
        full_name_swapped=last_name+" "+first_name
  puts "Your new secret agent name is: "
  puts algorithm(full_name)

  puts "If you're finished, please enter quit or continue by pressing enter the button."
        answer = gets.chomp
          if answer == "quit"
            break
          end
  secret_name[last_name.capitalize+","+first_name.capitalize] = algorithm(full_name)
end

#Use a data structure to store the fake names as they are entered. When the user exits the program, iterate through the data structure and print all of the data the user entered.
silly_name = (algorithm(full_name))
secret_name.store(full_name,silly_name)

secret_name.each {|secret_name, full_name|
puts "#{secret_name} is also known as #{silly_name}."}