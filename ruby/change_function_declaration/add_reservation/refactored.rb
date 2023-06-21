class Book
  def initialize
    @reservations = []
    @priority_reservations = []
  end

  def add_reservation(customer)
    zz_add_reservation(customer, false)
  end

  def zz_add_reservation(customer, is_priority)
    fail unless [true, false].include?(is_priority)
    if is_priority
      @priority_reservations << customer
    else
      @reservations << customer
    end
  end

  def reservations
    @reservations
  end

  def priority_reservations
    @priority_reservations
  end
end
