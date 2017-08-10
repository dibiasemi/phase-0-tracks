
words = ["couch",
"alarm",
"bushes",
"license",
"mountain",
"wiggly",
"shame",
"oil",
"depressed",
"sticks",
"lively",
"sunrise",
"clam",
"paper",
"zonked",
"useless",
"dance",
"bucket",
"magical",
"idiotic"]

word = words[rand(words.length)]
total_chances = word.length
wrong_guess = 0
correct_guess = ''

def add_placeholder(rand_word, guessed_letter)
  placeholder = ''
  rand_word.chars do |letter|
    placeholder += guessed_letter.include?(letter)? letter : ' _'
  end
  placeholder
end

puts 'Can you guess what word this is?!'+ add_placeholder(word, "")

while true
  print "Please guess a letter - you have #{total_chances - wrong_guess} chances left:"

  letter = gets.chomp

  if word.include? letter

   if
      correct_guess = correct_guess + letter
      placeholder = add_placeholder(word, correct_guess)
      puts 'Great job! You guessed one of the letters ' + placeholder
    end

    unless placeholder.include? '_'
      puts "You guessed it! You're a rockstar"
      break
    end

  else
    puts "Ooops! there is no '#{letter}' in the word "
    wrong_guess += 1

    if (wrong_guess == total_chances)
      puts "Sorry kiddo! You're out of guesses!"
      break
    else
      puts 'Keep Guessing' + add_placeholder(word, correct_guess)
    end
  end
end