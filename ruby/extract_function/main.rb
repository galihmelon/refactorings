require_relative "extract_function"

order_1 = Order.new(1)
order_2 = Order.new(2)
order_3 = Order.new(3)
orders = [order_1, order_2, order_3]

invoice = Invoice.new("My Name", orders)

extract_function = ExtractFunctionOriginal.new
extract_function.print_owning(invoice)

puts

extract_function = ExtractFunctionRefactored.new
extract_function.print_owning(invoice)
