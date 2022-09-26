# Ch7 Hashes - Exercise on page 253
# 26th Sept, 2022

# Provided Methods 
def create(options = {}) # setting up a method, with an empty hash as the parameter
  puts "Creating #{options[:database]} for owner #{options[:user]} ..."
end

def connect(database:, host: "localhost", port: 3306, user: "root")
  puts "Connecting to #{databse} on #{host} port #{port} as #{user}..."
end  

#A
create(database: "catalog", user: "carl")
#Expected output: Creating catalog for owner carl...

#B
create(user: "carl")
#Expected output: Creating  for owner carl...

#C
create
#Expected output: Creating  for owner  ...

#D
connect(database: "catalog")
#Expected output: Connecting to catalog on localhost port 3306 as user root 

#E
connect(database: "catalog", password: "1234")
#Expected output: unknown keyword: password

#F
connect(user: "carl")
#Expected output: missing keyword: database