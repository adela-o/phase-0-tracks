#### Paired with Jesus Roman, turned in his Github link.#####

#Encrypt pseudo code

  #1. Find length of string
  #2. In loop while index is < length or string
  # -Add +1 to index
  # -Next index value
  #3. Set value of new var encrypted msg to the result of loop

  def encrypt(msg)
    index = 0
    encrypted_msg=""
    msg_length = msg.length

    until index == msg_length
    if msg[index] != " "
      encrypted_msg[index] = msg[index].next
    elsif msg[index] == " "
      encrypted_msg[index] = msg[index]
    end
      index += 1
    end

    p encrypted_msg

  end

  #Decrypt pseudo code

  #1. Take a message and find where each letter is on the alphabet
  #2. Take that value and subtract 1
  #3. Set the new value as the index value for that letter
  #4. Move on to next letter until end of string

  def decrypt (msg)

    index = 0
    msg_length = msg.length
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    decrypted_msg = ""

    until index == msg_length
     if msg[index] != " "

      msg_test = msg[index]
      #p msg_test

      test = alphabet.index(msg_test) - 1
      #p test

      final = alphabet[test]
      #p final

      decrypted_msg = decrypted_msg + final
      elsif msg[index] == " "
        decrypted_msg[index] = msg[index]
      end
      index += 1
    end

      p decrypted_msg
  end

  #Turning this into an interface

  #1. Asks a secret agent (the user) whether they would like to decrypt or encrypt a password
  #2. Asks them for the password
  #3. Conducts the requested operation, prints the result to the screen, and exits.

  # OUR DRIVER CODE
  puts "Would you like to decrypt or encrypt a password?"
  method = gets.chomp

  puts "What is your password?"
  msg = gets.chomp

  #if user wants to encrypt run the encrypt method
  if method == "encrypt"
    encrypt(msg)

  #if user wants to decrypt then run the decrypt method
  elsif method =="decrypt"
    decrypt(msg)

  #if user did not type decrypt or encrypt say we didn't understand and exit

  else
    "Sorry didn't understand you"
  end
