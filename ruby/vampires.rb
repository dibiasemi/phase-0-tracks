#List of variables
name = ""
age = nil
age_int = nil
birth_year = nil
garlic = ""
benefits = ""
results = ""
abs_diff = nil
vampire_status = nil
number = nil
final = nil

puts "How many employees will be processed?"
number = gets.chomp.to_i

i = 0
until i == number
  puts "Employee name:"
  name = gets.chomp
  puts "Employee age:"
  age = gets.chomp.to_i
  puts "Employee birth year:"
  birth_year = gets.chomp.to_i
  # Calculating age and determining accuracy if difference is within 1 year
  real_age = 2017 - birth_year
  diff = real_age - age
  abs_diff = diff.abs
  # Employee responses to the following questions
  puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
  garlic = gets.chomp
  puts "Would you like to enroll in the company’s health insurance? (y/n)"
  benefits = gets.chomp
  puts "Please list employee allergies one by one:"
    until final == true
      allergies = gets.chomp
      if allergies == "sunshine"
        vampire_status = 2
        final = true
       elsif allergies == "done"
        final = true
        puts "Thank you!"
        vampire_status = 5
       else
      puts "Please continue to list allergies. When finished, type done"
      end
    end
    # Cases for each vampire status and result displayed
    case vampire_status
      when vampire_status = 1
        puts "Probably not a vampire"
      when vampire_status = 2
        puts "Probably a vampire"
      when vampire_status = 3
       puts "Almost certianly a vampire"
      when vampire_status = 4
       puts "Definitely a vampire"
      when vampire_status = 5 #needs additional info.
        if abs_diff <= 1
          if garlic == "y" || benefits == "y"
          vampire_status = 1 unless
          name == "Drake Cula" || name == "Tu Fang"
          vampire_status = 4
          end
         elsif abs_diff > 1
          if garlic == "n" || benefits == "n"
          vampire_status = 2 unless
          garlic == "n" && benefits == "n"
          vampire_status = 3 unless
          name == "Drake Cula" || name == "Tu Fang"
          vampire_status = 4
          end
          else
          puts "Results inconclusive"
         end
    end
i += 1
end