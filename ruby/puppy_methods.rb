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

#Driver Code
object = Puppy.new
object.fetch("ball")

object2 = Puppy.new
object2.speak("4")

object3 = Puppy.new
object3.roll_over

object4 = Puppy.new
object4.dog_years(20)

object5 = Puppy.new
object5.jump(3)







