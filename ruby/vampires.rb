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

  # Employee responses to the following questions
  puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
  garlic = gets.chomp

  puts "Would you like to enroll in the company’s health insurance? (y/n)"
  benefits = gets.chomp

  puts "Please list employee allergies one by one:"

  sunshine_allergy = false
  final = nil
  until final == true
    allergies = gets.chomp

    if allergies == "sunshine"
      sunshine_allergy = true
      final = true
     elsif allergies == "done"
      final = true
     else
      puts "Please continue to list allergies. When finished, type done:"
    end
  end

  age_diff = real_age - age
  abs_age_diff = age_diff.abs
  age_correct = abs_age_diff == 0
  vampire_status = 0

  if age_correct
    if garlic == "y" || benefits == "y"
      vampire_status = 1
    end
  end

  if !age_correct
    if garlic == "n" || benefits == "n"
      vampire_status = 2
    end
  end

  if !age_correct
    if garlic == "n" && benefits == "n"
      vampire_status = 3
    end
  end

  if name == "Drake Cula" || name == "Tu Fang"
    vampire_status = 4
  end

  if sunshine_allergy
    vampire_status = 2
  end

  result = "Results inconclusive"

  # Cases for each vampire status and result displayed
  case vampire_status
    when 1
      result = "Probably not a vampire"
    when 2
      result = "Probably a vampire"
    when 3
     result = "Almost certianly a vampire"
    when 4
     result = "Definitely a vampire"
    end

  puts result

  i += 1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."