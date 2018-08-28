require_relative "../models/employee"

class EmployeeRepository
  def initialize
    @employees = []
  end
  def all
    @employees
  end

  def add
    @employees << new_employee
  end
end
