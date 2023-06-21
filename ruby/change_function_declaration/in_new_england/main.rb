require_relative "others"

a_customer = Customer.new
a_customer.address = Address.new
a_customer.address.state = "MA"

another_customer = Customer.new
another_customer.address = Address.new
another_customer.address.state = "AA"

third_customer = Customer.new
third_customer.address = Address.new
third_customer.address.state = "CT"

some_customers = [a_customer, another_customer, third_customer]

require_relative "original"
puts "Original"
new_englanders = some_customers.select {|customer| in_new_england(customer)}
puts new_englanders.count
new_englanders.each {|customer| puts customer.address.state}
puts

require_relative "refactored_3"
puts "Refactoring in progress"
new_englanders = some_customers.select {|customer| xx_NEW_in_new_england(customer.address.state)}
puts new_englanders.count
new_englanders.each {|customer| puts customer.address.state}
puts

require_relative "refactored_4"
puts "Refactored"
new_englanders = some_customers.select {|customer| in_new_england(customer.address.state)}
puts new_englanders.count
new_englanders.each {|customer| puts customer.address.state}
