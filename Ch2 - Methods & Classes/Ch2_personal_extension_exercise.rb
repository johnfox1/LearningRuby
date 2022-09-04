# Ch2 Personal Extension Exercise
# Combining the Ch1 and Ch2 concepts
# Focusing on Variables, Conditionals, Loops, Methods (incl attr) and Classes
# 2nd Sept, 2022

# Setting up the LIC Class
class LIC

  attr_accessor :name, :focus, :market_cap
  attr_reader :annual_fee

  def annual_fee=(value)
    if value < 0 || value > 3
      raise "Check this, unusual annual fee value"
    end
    @annual_fee = value
  end

  def lic_information
    puts "#{@name} focuses on #{@focus}."
    puts "It has a market cap of #{@market_cap} and annual fee of #{@annual_fee}%."
  end

  def buy_stock(add_stock)
    puts "#{@name} has added a position in #{add_stock}."
  end

  def sell_stock(sold_stock)
    puts "#{@name} has sold a position in #{sold_stock}"
  end

  def pay_dividend(dividend_amount)
    puts "#{@name} has paid a dividend of #{dividend_amount} cents per share."
  end
  
end

# Receving inputs from the investor
print "Do you have a LIC that you like? "
investor_lic_name = gets.chomp
print "What does #{investor_lic_name} focus on? "
investor_lic_focus = gets.chomp
print "What's it's market cap? "
investor_lic_market_cap = gets.chomp
print "And it's annual fee? "
investor_lic_annual_fee = gets.chomp.to_f
puts "Thank you for that information."

# Creating a LIC object instance from the LIC Class by interpolating the investor responses
investor_lic = LIC.new
investor_lic.name = "#{investor_lic_name}"
investor_lic.focus = "#{investor_lic_focus}"
investor_lic.market_cap = "#{investor_lic_market_cap}"
investor_lic.annual_fee = investor_lic_annual_fee
investor_lic.lic_information
investor_lic.buy_stock("Visa")
investor_lic.pay_dividend(0.45)

  