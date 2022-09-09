# Ch4 'Payroll at Chargemore' - Adding class methods to efficiently add employees
# 9th Sept, 2022

# Creating the Employee SuperClass
class Employee

  attr_reader :name

  def name=(name)
    if name == ""
      raise "name can't be blank"
    end
    @name = name
  end

  def initialize(name = "Name not set")
    self.name = name
  end

  def print_name
    puts "Employee Name: #{name}"
  end
  
end


# Creating the SalariedEmployee SubClass
class SalariedEmployee < Employee

  attr_reader :salary
  
  def salary=(salary)
    if salary < 0
      raise "salary can't be a negative value"
    end
    @salary = salary
  end

  def initialize(name = "Name not set", salary = 0.00)
    super(name)
    self.salary = salary
  end

  def print_pay_stub
    pay_for_period = (self.salary / 365) * 14
    pay_for_period_formatted = format("%.2f", pay_for_period)
    self.print_name
    puts "Pay for Period: $#{pay_for_period_formatted}"
  end

end


# Creating the HourlyEmployee SubClass
class HourlyEmployee < Employee

  attr_reader :hourly_wage, :hours_per_week
  
  def hourly_wage=(hourly_wage)
    if hourly_wage < 0
      raise "hourly wage can't be a negative value"
    end
    @hourly_wage = hourly_wage
  end

  def hours_per_week=(hours_per_week)
    if hours_per_week < 0
      raise "hours per week can't be a negative value"
    end
    @hours_per_week = hours_per_week
  end  

  def initialize(name = "Name not set", hourly_wage = 0.00, hours_per_week = 0.00)
    super(name)
    self.hourly_wage = hourly_wage
    self.hours_per_week = hours_per_week
  end

  def print_pay_stub
    pay_for_period = self.hourly_wage * self.hours_per_week * 2.0
    pay_for_period_formatted = format("%.2f", pay_for_period)
    self.print_name
    puts "Pay for Period: $#{pay_for_period_formatted}"
  end

  # Creating class methods to pre-populate employee types
  def self.security_guard(name)
    HourlyEmployee.new(name, 19.25, 30)
  end

  def self.cashier(name)
    HourlyEmployee.new(name, 12.75, 25)
  end

  def self.janitor(name)
    HourlyEmployee.new(name, 10.50, 20)
  end  
    
end

# Salaried Employee Tests
puts "Salaried Employee Tests"
lilly_peek = SalariedEmployee.new("Lilly Peek", 60000)
lilly_peek.print_pay_stub
addie_fox = SalariedEmployee.new("Addie Fox", 80000).print_pay_stub
empty_employee = SalariedEmployee.new.print_pay_stub

# Hourly Employee Tests
puts "Hourly Employee Tests"
krista_fox = HourlyEmployee.new("Krista Fox", 50, 20)
krista_fox.print_pay_stub
jo_inglis = HourlyEmployee.new("Jo Inglis", 100, 30).print_pay_stub
empty_employee_2 = HourlyEmployee.new.print_pay_stub

# Hourly Employee Tests using Class Methods
gary_fox = HourlyEmployee.security_guard("Gary Fox")
gary_fox.print_pay_stub
jack_fox = HourlyEmployee.cashier("Jack Fox")
jack_fox.print_pay_stub
