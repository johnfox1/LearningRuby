# Ch8 References - Exercise on page 277
# 28th Sept, 2022

# A 
foods = Hash.new([]) # a new hash, with an empty array as the default value
foods['A'] << "Apple" 
foods['A'] << "Avocado"
foods['B'] << "Bacon"
foods['B'] << "Bread"
p foods['A'] # inspects the food hash for the A key
p foods['B'] # inspects the food hash for the B key
p foods # inspects the whole food hash

############ Line Break 
puts ""
############ Line Break 

# B 
foods = Hash.new { |hash, key| [] }
foods['A'] << "Apple" 
foods['A'] << "Avocado"
foods['B'] << "Bacon"
foods['B'] << "Bread"
p foods['A'] # inspects the food hash for the A key
p foods['B'] # inspects the food hash for the B key
p foods # inspects the whole food hash

############ Line Break 
puts ""
############ Line Break 

# C 
foods = Hash.new { |hash, key| hash[key] = [] }
foods['A'] << "Apple" 
foods['A'] << "Avocado"
foods['B'] << "Bacon"
foods['B'] << "Bread"
p foods['A'] # inspects the food hash for the A key
p foods['B'] # inspects the food hash for the B key
p foods # inspects the whole food hash