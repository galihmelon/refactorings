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
    base_price -
    quantity_discount +
    shipping
  end

  def base_price
    quantity * item_price
  end

  def quantity_discount
    [0, quantity - 500].max * item_price * 0.05
  end

  def shipping
    [quantity * item_price * 0.1, 100].min
  end
end
