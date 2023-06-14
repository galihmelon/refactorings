require 'date'

def print_owning(invoice)
  outstanding = 0

  puts "***********************"
  puts "**** Customer Owes ****"
  puts "***********************"

  # calculate outstanding
  invoice.orders.each { | order| outstanding += order.amount }

  # record due date
  today = Date.today
  invoice.due_date = today + 30

  # print details
  $stdout.puts "name: #{invoice.customer}"
  $stdout.puts "amount: #{outstanding}"
  $stdout.puts "due: #{invoice.due_date}"
end
