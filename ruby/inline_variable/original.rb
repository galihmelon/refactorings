def base_price_above_threshold?(an_order)
  base_price = an_order.base_price
  base_price > 1000
end
