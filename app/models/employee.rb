class Employee
  attr_accessor :id, :name, :address
  def initialize(attributes = {})
    @name = attributes[:name]
    @address = attributes[:address]
    @id = 1
  end
end
