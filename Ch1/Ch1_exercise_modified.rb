# This is a modified version of the Chapter 1 exercise
# Developed by John Fox, 24th Aug 2022


# Setting up the game paramters
target_number = rand(1..20)
# puts "#{target_number}"
number_chances = 3
chance = 0
chances_remaining = number_chances - chance
chance_correct = false


# Welcome message
puts "Hello, welcome to the 'Number Guess' game."
print "What's your name? "
player_name = gets.chomp
puts "Welcome #{player_name}."


# Game Instructions
puts "In this game, you have 3 chances to guess a number between 1 and 20."
puts "If you guess incorrectly, I'll let you know if it's higher or lower."


# Playing the game
until chance_correct || chance > number_chances - 1

  chance += 1
  
  print "This is chance number #{chance}. Please make a guess: "
  player_guess = gets.to_i
  
  if player_guess == target_number
    puts "Congratulations, you guessed correctly. You won the game!"
    chance_correct = true
  elsif player_guess > target_number
    puts "Incorrect I'm afraid, your guess was too high."
  else player_guess < target_number
    puts "Incorrect I'm afraid, your guess was too low."
  end  

end

unless player_guess == target_number
  puts "I'm sorry to say that you have run out of chances, and therefore, game over."
end


# Does the player want to play again?
play_again_message_understood = false

while play_again_message_understood == false
  
  print "Would you like to play the game again [Yes/No]: "
  play_again = gets.chomp
  
  if play_again == "Yes"
    puts "Great, let's play again!"
    play_again_message_understood = true
  elsif play_again == "No"
    puts "No worries, have a lovely day #{player_name}."
    play_again_message_understood = true
  else 
    puts "I'm sorry, I didn't understand that, please state Yes or No to play again."
  end

end  


