require_relative 'others'

order = Order.new

require_relative 'original'
order.base_price = 123.45
puts base_price_above_threshold?(order)

order.base_price = 12345
puts base_price_above_threshold?(order)

require_relative 'refactored'
order.base_price = 123.45
puts base_price_above_threshold?(order)

order.base_price = 12345
puts base_price_above_threshold?(order)
