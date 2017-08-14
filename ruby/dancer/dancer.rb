class Dancer
  attr_reader :name
  attr_accessor :card, :age

  def initialize(name,age)
    @name = name
    @age = age
    @card = []
  end

  # def becomes_tired
  #   @tired = true
  # end

  # def get_rested
  #   @tired = false
  # end

  def pirouette
    "*twirls*"
  end

  def bow
    "*bows*"
  end

  def queue_dance_with(new_dancer)
    @card << new_dancer
  end

  def begin_next_dance
    first_dancer = @card.shift
    "Now dancing with #{first_dancer}."
  end

  def leaps
    "*leaps across stage*"
  end
end


# my_dancer = Dancer.new('Andrew', 33)
# p my_dancer
# puts '-----------------'
# my_dancer.becomes_tired
# p my_dancer
dancer = Dancer.new('Misty',34)
dancer.queue_dance_with("Anna")
dancer.queue_dance_with('Mikhail')
p dancer.begin_next_dance
p dancer.begin_next_dance


#1. after each question do a commit, try to make the question about what you did rather then which question you completed
#2. be familiar with writing simple passing rspec tests, if you want to stretch go for it, but don't have failing tests, i.e. comment them out of you cant get it to work.
#3. adding / key value pairs to hashes / 'arrays' and iterate
#4. You can do this

