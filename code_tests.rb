# Does the player want to play again?

play_again_message_understood = false

while play_again_message_understood == false
  
  print "Would you like to play the game again [Yes/No]: "
  play_again = gets.chomp
  
  if play_again == "Yes"
    puts "Great, let's play again!"
    play_again_message_understood = true    
  elsif play_again == "No"
    puts "No worries, have a lovely day."
    play_again_message_understood = true
  else 
    puts "I'm sorry, I didn't understand that, please state Yes or No to play again."
  end

end  
