class Santa
  attr_reader :gender, :ethnicity
  attr_accessor :reindeer_ranking, :age, :gender

  def initialize(gender,ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
     puts "Initializing Santa instance..."
  end

  def speak
      puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at (reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
  end

  # getter methods - making private data publically available outside the class
  # def age
  #   @age
  # end

  # def ethnicity
  #   @ethnicity
  # end

  # def gender
  #   @gender
  # end

  # # setter method
  # def gender=(gender_new)
  #   @gender = gender_new
  # end

  # def age=(random_age)
  #   @age = random_age
  # end

end

# # Release 0 Driver Code
# santy = Santa.new
# santy.eat_milk_and_cookies("Chocolate Chip Cookie")
# santy = Santa.new
# santy.speak

# # Release 1 Driver Code
# santas = []
# gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# gender.length.times do |i|
#   santas << Santa.new(gender[i], ethnicity[i])
#   puts "We have now added a Santa who is a #{ethnicity[i]}, #{gender[i]}"
# end

# # Release 2 and 3 Driver Code
# santy = Santa.new("female","Italian")
# p santy
# santy.celebrate_birthday
# p santy
# santy.get_mad_at("Vixon")
# p santy
# p santy.gender = "Male"
# p santy.ethnicity
# p santy.age

#Release 4 Driver code - Multiple Santas
gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

100.times do
  random_santa = Santa.new(gender.sample,ethnicity.sample)
  random_santa.age = rand(140)
  puts "This random sanata is " + random_santa.gender.to_s + ", they are " + random_santa.ethnicity.to_s + ", and " + random_santa.age.to_s + " years old."
end