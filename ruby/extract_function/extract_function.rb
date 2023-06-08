require 'date'

class ExtractFunctionOriginal
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
end

class ExtractFunctionRefactored
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
end

class Invoice
  attr_reader :customer, :orders
  attr_accessor :due_date

  def initialize(name, orders)
    @customer = name
    @orders = orders
  end
end

class Order
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end
end
