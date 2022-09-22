# Ch7 Hashes - Exercise on p235
# 22nd Sept, 2022

# Setting up the hash
school = {
  "Simone" => "here",
  "Jeanie" => "here"
}

# Setting up an array
names = ["Simone", "Ferriss", "Jeanie", "Cameron"]

# Setting up a block to iterate through the array (names) and compare with the hash(school)
names.each do |name|
  if school[name] # truthy conditional, checking to see if a hash key matches the array element being iterated on
    puts "#{name} is present"
  else
    puts "#{name} is absent"
  end
end