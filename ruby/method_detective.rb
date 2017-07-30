# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".insert(2,'o')
# => “zoom”

"enhance".center(15)
# => "    enhance    "

"Stop! You’re under arrest!".upcase!
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".concat(" suspects")
"the usual".insert(-1," suspects")
"the usual".insert(9, " suspects ")
# Note: you can do this with or without paranthesis
# => "the usual suspects"

" suspects".(0, "The usual")
" suspects".prepend("the usual")
# => "the usual suspects"

"The case of the disappearing last letter".chop
# You don't have to specify, but you can...
"The case of the disappearing last letter".chomp("r")
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".reverse.chop.reverse
# OR this will slice and keep everything from index 1 to index of 39 (length of string)
"The mystery of the missing first letter".slice(1,39)
# OR you can totally just say delete "T"
"The mystery of the missing first letter".delete("T")
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"

"z".ord
# => 122
# (What is the significance of the number 122 in relation to the character z?)
# .ord returns the Integer ordinal of a one-character string or the ASCII code of a character

"How many times does the letter 'a' appear in this string?".count "a"
"How many times does the letter 'a' appear in this string?".count("a")
# => 4