# Ch6 Code Magnets exercise (p207)
# 19th Sept, 2022

# Setting up the make_casserole method
def make_casserole
    puts "Preheat oven to 375 degrees"
    ingredients = yield # Sets up the variable 'ingredients', yields result to block, and receives block result back as the value for 'ingredients'
    puts "Place #{ingredients} in dish" # Interpolated the block result into the string
    puts "Bake for 20 minutes"
end

# Setting up the first block
make_casserole do
    "noodles, celery, and tuna" 
end

# Setting up the second block
make_casserole do
    "rice, broccoli, and chicken" # Block body is simply a string to return to method
end   


