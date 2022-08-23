# Guess My Number Game
# Written by: John Fox

puts "Welcome to the 'Guess My Number!' game"

# Asks the players name, stores it, and greets them
print "What's your name? "
input = gets
name = input.chomp
puts "Welcome, #{name}!"

# Store a random number (the 'target') for the player to guess
puts "I've chosen a random number for you to guess as part of the game."
puts "See if you can guess it. It's between 1 and 100."
target = rand(1..100)

# Define the number of guesses in the game
num_guesses_allowed = 10
num_guesses = 0

# Track if player has guessed correctly
guessed_it = false

# Playing the game
until num_guesses >= num_guesses_allowed || guessed_it

  # Calculate number of guesses remaining and advise player
  remaining_guesses = num_guesses_allowed - num_guesses
  puts "You have #{remaining_guesses} guesses remaining."

  # Prompt the player to make a guess
  print 'Make a guess: '
  guess = gets.to_i
  puts "To confirm, your guess was #{guess}."
  num_guesses += 1
  
  # Compare players guess to the target and advise the players
  if guess > target
    puts "Incorrect I'm afraid. Your guess was too high."
  elsif guess < target
    puts "Incorrect I'm afraid. Your guess was too low."
  else guess == target
    puts "Great guess #{name}! You guessed correctly! It took you #{num_guesses} guesses."
    guessed_it = true
  end

end

unless guessed_it
  puts "Unfortunately you have run out of turns. The correct number was #{target}."
end