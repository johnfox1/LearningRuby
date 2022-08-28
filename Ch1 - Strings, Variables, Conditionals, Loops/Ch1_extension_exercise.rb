# Chapter 1 - Personal extension exercise
# Writing a chat bot that includes conditionals and loops
# Context: ordering pizza from a restaurant
# 26th August 2022

# Chat bot parameters
num_pizza_options = 3
pizza_options = "Pepperoni, Hawaiian or Vegetarian"
pizza_sizes = "Small, Medium or Large"
additional_order = true


# Welcome new customer
puts "Hello! Welcome to John's famous pizza restaurant."
print "May I take your name please? "
customer_name = gets.chomp
puts "Welcome #{customer_name}!"


# Describing options for the customer
puts "On the menu today we have #{num_pizza_options} options to choose from: #{pizza_options}."
puts "These options come in the following sizes: #{pizza_sizes}."


# Setting up the ordering loop
while additional_order == true

  # Taking the customer's order
  print "Which pizza would you like to order? "
  customer_order = gets.chomp

  # Any extra's on the order:
  if customer_order == "Hawaiian"
  print "Would you like extra pineapple? [Yes/No] "
  hawaiian_extra_pineapple = gets.chomp
    
    if hawaiian_extra_pineapple == "Yes"
      puts "Excellent choice #{customer_name}, that has been noted."
    else
      puts "No worries #{customer_name}, a great choice nonetherless."
    end
      
  else
    puts "#{customer_order}, great choice #{customer_name}."
  end  

  # Size of order
  print "What size would you like your #{customer_order} pizza? [Small, Medium or Large] "
  customer_order_size = gets.chomp
  puts "Excellent, so we have a #{customer_order_size} #{customer_order} pizza."

  # Determining if the order will loop (extra orders)  
  print "Would you like to order another pizza? [Yes/ No] "
  additional_order_response = gets.chomp

  if additional_order_response == "Yes"
    "Excellent"
  elsif additional_order_response == "No"
    additional_order = false
    "No worries"
  end

end


# Concluding the order
puts "Thank you for your order #{customer_name}, it will be ready in about 20min. See you soon."