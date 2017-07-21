# Variables for hampster sanctuary
final = false
hampster_name = nil
volume_level = nil
fur_color = nil
age = nil
hampster_adoption = nil
number_selected = false

puts "Please tell us the hampster's name"
hampster_name = gets.chomp

until number_selected == true
puts "Rate #{hampster_name}'s volume level (1-10) (one-ten)"
puts "or please mark the age as (unknown)."
volume_level = gets.chomp
 if volume_level == "one"
   puts "You selected one."
   volume_level = 1 #This converts number selected into an integer
   number_selected = true
 elsif volume_level == "two"
   puts "You selected two."
   volume_level = 2
   number_selected = true
 elsif volume_level == "three"
   puts "You selected three."
   volume_level = 3
   number_selected = true
 elsif volume_level == "four"
   puts "You selected four."
   volume_level = 4
   number_selected = true
 elsif volume_level == "five"
   puts "You selected five."
   volume_level = 5
   number_selected = true
 elsif volume_level == "six"
   puts "You selected six."
   volume_level = 6
   number_selected = true
 elsif volume_level == "seven"
   puts "You selected seven."
   volume_level = 7
   number_selected = true
 elsif volume_level == "eight"
   puts "You selected eight."
   volume_level = 8
   number_selected = true
 elsif volume_level == "nine"
   puts "You selected nine."
   volume_level = 9
   number_selected = true
 elsif volume_level == "ten"
   puts "You selected ten."
   volume_level = 10
   number_selected = true
 elsif volume_level == "1"
   puts "You selected 1."
   volume_level = 1
   number_selected = true
 elsif volume_level == "2"
   puts "You selected 2."
   volume_level = 2
   number_selected = true
 elsif volume_level == "3"
   puts "You selected 3."
   volume_level = 3
   number_selected = true
 elsif volume_level == "4"
   puts "You selected 4."
   volume_level = 4
   number_selected = true
 elsif volume_level == "5"
   puts "You selected 5."
   volume_level = 5
   number_selected = true
 elsif volume_level == "6"
   puts "You selected 6."
   volume_level = 6
   number_selected = true
 elsif volume_level == "7"
   puts "You selected 7."
   volume_level = 7
   number_selected = true
 elsif volume_level == "8"
   puts "You selected 8."
   volume_level = 8
   number_selected = true
 elsif volume_level == "9"
   puts "You selected 9."
   volume_level = 9
   number_selected = true
 elsif volume_level == "10"
   puts "You selected 10."
   volume_level = 10
   number_selected = true
 elsif volume_level == "unknown"
   puts "You selected unknown."
   volume_level = "unknown"
   number_selected = true
 else
   number_selected = false
 end
end

puts "What is #{hampster_name}'s fur color?"
fur_color = gets.chomp

puts "How old is #{hampster_name}?"
age = gets.chomp
age_int = age.to_i # This converts age to an integer

puts "Is #{hampster_name} a good candidate for adoption? (y/n)?"

until final == true
  hampster_adoption = gets.chomp
  if hampster_adoption == "y"
    puts "#{hampster_name} is up for adoption!"
    adopted_final = "adopted!"
    final = true
    hampster_adoption = true
  elsif hampster_adoption == "n"
    puts "Bummer - better luck next time!"
    adopted_final = "not adopted today :("
    final = true
    hampster_adoption = false
  else
    puts "I'm sorry, please answer with (y/n)..."
  end
end

def complete(hampster_name,volume_level,fur_color,age,hampster_adoption)
  if hampster_name.length == 0
    puts "hampster Name: nil"
  else
    puts "hampster Name: #{hampster_name}"
  end
# Because we converted volume_level to a fixnum/integer, we cannot use the conditional statement for length as we did with the other variables because length only considers length of strings

  if volume_level == "unknown"
    puts "Volume level: nil"
  else
    puts "Volume level: #{volume_level}"
  end

  if fur_color.length == 0
    puts "Fur color: nil"
  else
    puts "Fur color: #{fur_color}"
  end

  if age.length == 0
    puts "Age: nil"
  else
    puts "Age: #{age}"
  end
end

# This accounts for both YES & NO as well as whether or not the hampster was named
  if hampster_name.length == 0
    if hampster_adoption == true
      puts "hampster Adopted?: nil was #{adopted_final}"
    else
      puts "hampster Adopted?: #{hampster_name} was #{adopted_final}"
    end
    else
    if hampster_adoption == false
      puts "hampster Adopted?: nil was #{adopted_final}"
    else
      puts "hampster Adopted?: #{hampster_name} was #{adopted_final}"
    end
  end

#This calls the method from above
complete(hampster_name,volume_level,fur_color,age,hampster_adoption)