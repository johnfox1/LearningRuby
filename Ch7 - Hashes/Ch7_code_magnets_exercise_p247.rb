# Ch7 Hashes -Code Magnets exercise (p247)
# 26th Sept, 2022


def volume(options)  # Setting up a method, with hash keys as the parameters
  result = options[:depth] * options[:height] * options[:width] # Setting up a variable, which is the result of the product of hash key values
  puts "Volume is #{result}"
end

volume(width: 10, height: 5, depth: 2.5) # Calling the method, and defining the hash key values