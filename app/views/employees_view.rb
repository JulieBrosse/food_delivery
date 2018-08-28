require_relative "../controllers/employees_controller"

class EmployeesView
  def ask_employee_name
    puts "Name?"
    gets.chomp
  end

  def ask_employee_address
    puts "Address?"
    gets.chomp
  end

  def display(employees)
    puts employees
  end
end
