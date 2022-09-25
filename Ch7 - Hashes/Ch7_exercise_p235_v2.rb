# Ch7 Hashes - Exercise on P235
# 26th Sept, 2022

# Hash with 2 key/value pairs
school = {
  "Simone" => "here",
  "Jeanie" => "here"
}

# Array with 4 elements
names = ["Simone", "Ferriss", "Jeanie", "Cameron"]

# Block that iterates through the names array 
names.each do |name|
  if school[name] # Truthy conditional on the school hash (checking if the key exists)
    puts "#{name} is present"
  else 
    puts "#{name} is absent"
  end
end 