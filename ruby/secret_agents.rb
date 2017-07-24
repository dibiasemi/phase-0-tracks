# ENCRYPT METHOD EXPLAINED
#input: string of varying length
#output: word where each index is advanced forward by one position/value
#process: .next method returns the next value for each index or iteration of the loop

def encrypt(password)
  next_string = "" #adds space to beginning of message
  i = 0
  while i < password.length
      if password[i] == "z"
        next_string << "a"
      elsif password[i] == " "
        next_string << " "
      else
        next_string << password[i].next
      end
      i += 1
    end
  next_string
end

# DECRYPT METHOD EXPLAINED
#input: string of varying length
#output: word where each index is decremented by one position/value
#process: index each letter of the alphabet using an "alpha" string and the .index method. The input of the .index method will be the output of the "message[i] where i represents an iteration in the loop. The output of the .index method will be a number. By subtracting one from that "number" and inputing it into the expression alpha[number-1] the output will be a "new_letter" at that index. We can then shovel that "new_letter" onto our initial "next_string" variable and keep building the string with each iteration through the loop.

def decrypt(password)
  next_string = "" #This is our beginning string
  i = 0
  alpha = "abcdefghijklmnopqrstuvwxyz"
  while i < password.length
    if password[i] == " "
      next_string << " "
    else
      number = alpha.index(password[i])
      new_letter = alpha[number-1]
      next_string << new_letter
    end
   i += 1
  end
  next_string
end

# puts encrypt("abc")
# puts encrypt("zed")
# puts decrypt("bcd")
# puts decrypt("afe")
# puts encrypt("helloza goodbye")
# puts decrypt(encrypt("helloza goodbye"))
# puts decrypt(encrypt("swordfish"))
# # The nested methods work because the output of one is equal to the input of another = same word.


# Conducts the requested operation, prints the result to the screen, and exits
response = false
process = nil
message = nil
until response == true
# Asks a secret agent (the user) whether they would like to decrypt or encrypt a password
puts "Would you like to decrypt or encrypt a password?"
process = gets.chomp
# Asks them for the password
puts "Ok then, give me a password to #{process}:"
message = gets.chomp
  if process == "encrypt"
    puts "The following is your new encrypted password:"
    puts encrypt(message)
    response = true
  elsif process == "decrypt"
    puts "The following is your new decrypted password:"
    puts decrypt(message)
    response = true
  else
    puts "I didn't understand you"
  end
end