# Ch4 'Payroll at Chargemore' exercise (p104)
# 7th Sept, 2022

# Creating the Employee Class
class Employee

  attr_reader :name, :salary

  def name=(name)
    if name == ""
      raise "name can't be blank"
    end
    @name = name
  end

  def salary=(salary)
    if salary < 0
      raise "salary can't be a negative value"
    end
    @salary = salary
  end

  def print_pay_stub
    pay_for_period = (@salary / 365) * 14
    pay_for_period_formatted = format("%.2f", pay_for_period)
    puts "Employee Name: #{@name}"
    puts "Pay for Period: $#{pay_for_period_formatted}"
  end

end

kara_byrd = Employee.new
kara_byrd.name = "Kara Byrd"
kara_byrd.salary = 45000.00
kara_byrd.print_pay_stub
