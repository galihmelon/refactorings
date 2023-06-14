require 'date'

def print_owning(invoice)
  print_banner
  outstanding = calculate_outstanding(invoice)
  record_due_date(invoice)
  print_details(invoice, outstanding)
end

def print_banner
  puts "***********************"
  puts "**** Customer Owes ****"
  puts "***********************"
end

def calculate_outstanding(invoice)
  result = 0
  invoice.orders.each { | order| result += order.amount }
  result
end

def record_due_date(invoice)
  today = Date.today
  invoice.due_date = today + 30
end

def print_details(invoice, outstanding)
  $stdout.puts "name: #{invoice.customer}"
  $stdout.puts "amount: #{outstanding}"
  $stdout.puts "due: #{invoice.due_date}"
end
