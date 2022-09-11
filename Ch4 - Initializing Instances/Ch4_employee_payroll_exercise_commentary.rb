# Ch4 Employee Payroll exercise - Complete code with comments
# 12th Sept, 2022

# Setting up the Employee SuperClass 
class Employee

  # Attribute accessor reader method
  # Provides a window into the object from outside the instance 
  # :name attribute (and the instance methods) will be inherited by the SubClasses
  attr_reader :name

  # Manually writing the attributer writer method for the @name instance variable
  # This allows for value validation (rejecting errors for @name)
  # This attributer writer method & validation will be inherited by the SubClasses
  def name=(name)
    if name == ""
      raise "Name can't be blank"
    end
    @name = name 
  end

  # Initializing a value for the @name instance variable
  # This mean a new instance of the Employee class (and inherited SubClasses) will be assigned this value for name (so it doesn't error)
  def initialize(name = "Anonymous")
    # Using the self keyword as the receiver. This refers to itself as the object.
    # So, it's calling the name method on itself
    self.name = name
  end

  # Setting up a simple method to print the employees name 
  # This method (print_name) will be inherited by the SubClasses, unless overridden
  def print_name
    puts "Name: #{name}"
  end

# End of the Employee SuperClass 
end

# Setting up the SalariedEmpoyee SubClass (subclass of the Employee SuperClass)
class SalariedEmployee < Employee

  # Defining an attribute accessor reader method, which sets up the instance variable @salary
  # This provides a window into the instance of the class, reading this instance variable
  # This instance variable is specific only to this class (as it was defined in the SubClass)
  attr_reader :salary

  # Manually defining the attribute writer method for @salary instance variable
  # Adding validation, to reject erronous values for @salary
  # Specific only to this SubClass 
  def salary=(salary)
    if salary < 0
      raise "A salary of #{salary} isn't valid"
    end
    @salary = salary 
  end

  # Initializing the instance variables of the SubClass 
  def initialize(name = "Anonymous", salary = 0.0)
    # Using the super keyword to inherit the @name instance variable from the SuperClass
    # This initialize method wouldn't have inherited @name, since the method name was the same, and hence, override
    super(name)
    # Using the self keyword, to receive the method on itself, as the object
    self.salary = salary
  end

  # Setting up a method to print the pay-stub for Salaried Employees (instances of this class)
  def print_pay_stub
    # Calling the print_name method from the SuperClass
    print_name
    # Creating a local variable to assist in calculating the fortnightly pay
    pay_for_period = (salary / 365) * 14.0
    # Formatting the result of the above fortnightly pay calculating
    pay_for_period_formatted = format("%0.2f", pay_for_period)
    # Printing the fortnightly pay for the pay-stub
    puts "Fortnightly pay: $#{pay_for_period_formatted}"
  end

# End of the SalariedEmployee SubClass 
end

# Setting up the HourlyEmployee SubClass (subclass of the Employee SuperClass)
class HourlyEmployee < Employee

  # Defining 3 class methods for 3 standard types of hourly employees
  # Using the self keyword as the receiver, as these news methods are called on itself as the object
  # Inheriting name as the parameter from the SuperClass 
  def self.security_guard(name)
    # Creating a new instance of the Hourly Employee SubClass
    # The arguments of this method call being name (inherited), and then hourly rate and hours p/w
    HourlyEmployee.new(name, 19.25, 30)
  end 
  def self.cashier(name)
    HourlyEmployee.new(name, 12.75, 25)
  end
  def self.janitor(name)
    HourlyEmployee.new(name, 10.50, 20)
  end

  # Setting up two arrtibute accessor reader methods (which creates instance variables) for this SubClass
  attr_reader :hourly_wage, :hours_per_week

  # Manually setting up the attribute accessor writer methods, including validation
  def hourly_wage=(hourly_wage)
    if hourly_wage < 0
      raise "Hourly rate can't be negative"
    end
    @hourly_wage = hourly_wage
  end

  def hours_per_week=(hours_per_week)
    if hours_per_week < 0
      raise "Hours worked in per week can't be negative"
    end
    @hours_per_week = hours_per_week
  end

  # Initializing the values for the instance variables in this class when a new instance is created
  def initialize(name = "Anonomous", hourly_wage = 0.0, hours_per_week = 0.0)
    # Using the super keyword to inherit the name instance variable from the SubClass 
    # The name keyword wouldn't have been inherited, since initialize overrides the method of same name in the SuperClass
    super(name)
    self.hourly_wage = hourly_wage
    self.hours_per_week = hours_per_week
  end

  # Setting up the method to print the pay-stub for the hourly employees
  def print_pay_stub
    # Calling the print_name method from the SuperClass 
    print_name
    # Setting up a local variable to assest in calculating the fortnightly pay
    # Using 2.0 to convert the result to a float (to not cut off decimal points with integers)
    pay_for_period = hourly_wage * hours_per_week * 2.0
    # Formatting the value calculated in the above line, to two decimal places
    pay_for_period_formatted = format("%0.2f", pay_for_period)
    # Printing the forntighyly pay for the pay-stub
    puts "Fortnightly pay: $#{pay_for_period_formatted}"
  end

# End of the HourlyEmployee subclass class
end

# Initilizing a new instance of the Salaried Employee class
# Using the created initialize method to pass in values for name and salary
jane_doe = SalariedEmployee.new("Jane Doe", 50000)
#Printing the pay-stub for Jane Doe
jane_doe.print_pay_stub

# Initializing two instances of the Hourly Employee class
# Using the class methods defined in the HourlyEmployee class to directly create stanced new instances of the class
angela_matthews = HourlyEmployee.security_guard("Angela Matthews")
ivan_stokes = HourlyEmployee.cashier("Ivan Stokes")
angela_matthews.print_pay_stub
ivan_stokes.print_pay_stub


###############################
# Visual of the SuperClass / SubClass relationships

# SuperClass Name: Employee
# SuperClass Instance Variables: name
# SuperClass Instance Methods: print_name

# SubClass1 Name: SalariedEmployee
# SubClass1 Instance Variables: salary
# SubClass1 Instance Methods: print_pay_stub

# SubClass2 Name: HourlyEmployee
# SubClass2 Instance Variables: hourly_wage & hours_per_week
# SubClass2 Instance Methods: print_pay_stub
    
  
    
  

  

    