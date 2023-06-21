class Book
  def initialize
    @reservations = []
  end

  def add_reservation(customer)
    @reservations << customer
  end

  def reservations
    @reservations
  end
end
