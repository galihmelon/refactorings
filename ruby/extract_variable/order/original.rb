class Order
  def initialize(a_record)
    @data = a_record
  end

  def quantity
    @data.quantity
  end

  def item_price
    @data.item_price
  end

  def price
    quantity * item_price -
    [0, quantity - 500].max * item_price * 0.05 +
    [quantity * item_price * 0.1, 100].min
  end
end
