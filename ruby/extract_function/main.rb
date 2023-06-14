require_relative "others"

require_relative "original"
alias print_owning_original print_owning

require_relative "refactored"
alias print_owning_refactored print_owning

order_1 = Order.new(1)
order_2 = Order.new(2)
order_3 = Order.new(3)
orders = [order_1, order_2, order_3]

invoice = Invoice.new("My Name", orders)

print_owning_original(invoice)

puts

print_owning_refactored(invoice)
