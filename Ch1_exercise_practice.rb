# Trying to re-create the Ch1 exercise, without hints or looking
# Trying to make the code and game as clean & slim as possible
# Trying to eliminate any hardcoding of game parameters
# 25th August 2022

# Game parameters
target_number_min = 1
target_number_max = 20
target_number = rand(target_number_min..target_number_max)
puts "#{target_number}" #just for testing purposes
num_allowed_guesses = 3
num_guesses = 0
num_guesses_remaining = num_allowed_guesses - num_guesses
guess_correct = false

# Game welcome
print "Welcome to the number guess game. What's your name? "
player_name = gets.chomp
puts "Welcome #{player_name}."
puts "I have chosen a random number between #{target_number_min} and #{target_number_max}."
puts "You have #{num_allowed_guesses} guesses to guess this number."

# Playing the game
while guess_correct == false && num_guesses < num_allowed_guesses

  num_guesses += 1
  puts "This is guess number #{num_guesses} out of #{num_allowed_guesses} allowed guesses."
  print "What is your guess? "
  player_guess = gets.to_i

    # Comparing the guess to the target
    if player_guess > target_number
      puts "Incorrect, your guess was too high."
    elsif player_guess < target_number
      puts "Incorrect, your guess was too low."
    else player_guess = target_number
      guess_correct = true
      puts "Congratulations, you guessed correct on guess number #{num_guesses}."
    end

end

# Concluding the game
if guess_correct == false
  puts "Unfortunately you have run out of guesses. The target number was #{target_number}."
  puts "Game over I'm afraid. Have a nice day #{player_name}."
else
  puts "You won the game. Have a nice day #{player_name}."
end

