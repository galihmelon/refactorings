# Use Extract Variable
def in_new_england(a_customer)
  state_code = a_customer.address.state
  ["MA", "CT", "ME", "VT", "NH", "RI"].include?(state_code)
end
