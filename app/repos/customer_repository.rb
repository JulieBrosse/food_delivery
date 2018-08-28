class CustomerRepository
  def initialize
    @customers = []
  end

  def all
    @customers
  end

  def create
    @customers << customer
  end
end
