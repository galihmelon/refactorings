def report_lines(a_customer)
  lines = []
  gather_customer_data(lines, a_customer)
  lines
end

def gather_customer_data(out, a_customer)
  out << ["name", a_customer.name]
  out << ["location", a_customer.location]
end

class Customer
  attr_accessor :name, :location
end
