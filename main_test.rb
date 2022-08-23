# Welcoming the player
puts "Hello, welcome to the number guess game."
print "What's your name? "
player_name = gets.chomp
puts "Very nice to meet you #{player_name}. Let's play the game."

# Generating a target number
target_number_min = 1
target_number_max = 100
target_number = rand(target_number_min..target_number_max)
# puts "#{target_number}"

# Tracking player guesses
num_allowed_guesses = 10
num_guesses = 0

# Explaining the game to the player
puts "In this game, I have selected a random number between #{target_number_min} and #{target_number_max}."
puts "It's your task to guesses this number, from #{num_allowed_guesses} allowable guesses."
puts "I'll inform you if your guess is too high or too low."
puts "Let's get started!"

# Variable to track if the player has guessed correctly
guessed_it_correctly = false

# Looping the playing of the game
until guessed_it_correctly || num_guesses == num_allowed_guesses

  num_guesses += 1
  print "What number do you guess? "
  player_guess = gets.to_i

  if player_guess > target_number
    puts "Incorrect I'm afraid, your guess was too high."
    puts "You have #{num_allowed_guesses - num_guesses} guesses remaining."
  elsif player_guess < target_number
    puts "Incorrect I'm afraid. Your guess was too low."
    puts "You have #{num_allowed_guesses - num_guesses} guesses remaining."
  else player_guess = target_number
    puts "Well done! Your guessed correctly. You won the game!"
    guessed_it_correctly = true
  end

end

# Concluding the game if the player didn't win
unless guessed_it_correctly
  puts "I'm sorry, you didn't guess the number. The correct number was #{target_number}."
end

  