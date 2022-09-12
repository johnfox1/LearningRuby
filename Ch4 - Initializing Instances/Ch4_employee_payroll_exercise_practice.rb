# Practicing the Ch4 Employee Payroll exercise, without looking, based on the code & output
# 12th Sept, 2022

class Employee

  attr_reader :name

  def name=(name)
    if name == ""
      raise "Name can't be blank"
    end
    self.name = name
  end

  def initialize(name = "Anonymous")
    @name = name
  end

  def print_name
    puts "Name: #{@name}"
  end  

end


class SalariedEmployee < Employee

  attr_reader :salary

  def salary=(salary)
    if salary < 0
      raise "Salary can't be a negative value"
    end
    @salary = salary 
  end

  def initialize(name = "Anonymous Salaried Employee", salary = 0.00)
    super(name)
    self.salary = salary 
  end

  def print_pay_stub
    pay_calculation = (@salary / 365.0) * 14.0
    pay_calculation_formatted = format("%0.2f", pay_calculation)
    print_name
    puts "Fortnightly pay: $#{pay_calculation_formatted}"
  end  

end


class HourlyEmployee < Employee

  attr_reader :hourly_rate, :hours_per_week

  def hourly_rate=(hourly_rate)
    if hourly_rate < 0
      raise "Hourly rate can't be negative"
    end
    @hourly_rate = hourly_rate
  end

  def hours_per_week=(hours_per_week)
    if hours_per_week < 0
      raise "Hours per week can't be negative"
    end
    @hours_per_week = hours_per_week
  end

  def initialize(name = "Anonymous Hourly Employee", hourly_rate = 0.00, hours_per_week = 0.00)
    super(name)
    self.hourly_rate = hourly_rate
    self.hours_per_week = hours_per_week
  end

  def self.security_guard(name)
    HourlyEmployee.new(name, 20.00, 40.00)
  end

  def self.cashier(name)
    HourlyEmployee.new(name, 15.00, 30.00)
  end

  def print_pay_stub
    pay_calculation = hourly_rate * hours_per_week * 2.0
    pay_calculation_formatted = format("%0.2f", pay_calculation)
    print_name
    puts "Fortnightly name: $#{pay_calculation_formatted}"
  end    

end


#####################
# Code:
jane_doe = SalariedEmployee.new("Jane Doe", 50000)
jane_doe.print_pay_stub

angela_matthews = HourlyEmployee.security_guard("Angela Matthews")
angela_matthews.print_pay_stub
ivan_stokes = HourlyEmployee.cashier("Ivan Stokes")
ivan_stokes.print_pay_stub

empty_salaried_employee = SalariedEmployee.new
empty_salaried_employee.print_pay_stub
empty_hourly_employee = HourlyEmployee.new
empty_hourly_employee.print_pay_stub


#####################
# Output:
# Name: Jane Dow
# Fortnightly pay: $1904.00
# Name: Angela Matthews
# Fortnightly pay: $1155.00
# Name: Ivan Stokes
# Fortnightly pay: $637.50
# Name: Anonymous Salaried Employee
# Fortnightly pay: $0.00
# Name: Anonymous Hourly Employee
# Fortnightly pay: $0.00

