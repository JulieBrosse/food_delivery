require_relative "../views/customers_view"

class CustomersController
  def initialize(customer_repository)
    @repository = customer_repository
    @view = CustomersView.new
  end

  def list_customers
    customers = @repository.all
    @view.display(customers)
  end

  def add_customer
    name = @view.ask_customer_name
    address = @view.ask_address_name
    customer = Customer.new(name, address)
    @repository.create(customer)
  end
end
