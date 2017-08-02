class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    i = integer.to_i
    i.times do |x|
      puts "Woof!"
    end
  end

  def roll_over
    puts " *rolls over*"
  end

  def dog_years(human_years)
    n = human_years.to_i
    puts dog_age = n*7
  end

  def jump(num_of_jumps)
    x = num_of_jumps.to_i
     x.times do |x|
      puts "*jumps*"
    end
  end

  def initialize
    puts "Initializing new puppy instance..."
  end

end

# #Driver Code
# object = Puppy.new
# object.fetch("ball")

# object = Puppy.new
# object.speak("4")

# object = Puppy.new
# object.roll_over

# object = Puppy.new
# object.dog_years(20)

# object = Puppy.new
# object.jump(3)

array = []
1.times do
  instances = Puppy.new
  array.push(instances)
end

array.each do |instances|
  instances.speak("4")
  instances.roll_over
  instances.dog_years(20)
  instances.jump(3)
end

class Party

  def initialize
    puts "lets partayyyy!"
  end

  def drinks(no_drinks)
    x = no_drinks.to_i
      x.times do |x|
        puts "You've had #{x} drinks!!"
    end

  def dance
    puts "I'm dancing!! "
  end
end
end


array_example = []
y = 1
while y <50
  party_animal = Party.new
  array_example << party_animal
y+= 1
end

array_example.each do |party_animal|
  party_animal.drinks(6)
  party_animal.dance
end


party_animal = Party.new
party_animal.drinks(4)
party_animal = Party.new
party_animal.dance









