class Invoice
  attr_reader :customer, :orders
  attr_accessor :due_date

  def initialize(name, orders)
    @customer = name
    @orders = orders
  end
end

class Order
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end
end
