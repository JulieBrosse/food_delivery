require_relative "../views/employees_view"
require_relative "../models/employee"
require_relative "../repos/employee_repository"

class EmployeesController
  def initialize
    @view = EmployeeView.new
    @repository = employees_repository
  end

  def add
    name = @view.ask_employee_name
    address = @view.ask_employee_name
    new_employee = Employee.new(name, address)
    @repository.add(new_employee)
  end

  def list
    employees = @repository.all
    @view.display
  end
end
