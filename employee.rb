class Employee
  def initialize(employee_hash)
    @first_name = employee_hash[:first_name] # Bob
    @last_name = employee_hash[:last_name] # Parker
    @salary = employee_hash[:salary] # 100000
    @active = true
  end

  def first_name
    @first_name
  end

  def first_name=(name)
    @first_name = name
  end
end


class Manager < Employee
  attr_reader :employees
  def initialize(employee_hash)
    super
    @employees = "Mark"
    @first_name = "Test"
  end

  def fire_employee
    puts "Fired!"
  end
end

# employee = Employee.new(first_name: "Mark", last_name: "R", salary: 1, active: true)

# puts employee.first_name

manager = Manager.new(first_name: "Mark", last_name: "R", salary: 1, active: true, employees: "ksjdkjsd")
employee = Employee.new(first_name: "Mark", last_name: "R", salary: 1, active: true)


puts manager.employees

