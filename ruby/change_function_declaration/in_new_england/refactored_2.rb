# Use Extract Function
def in_new_england(a_customer)
  state_code = a_customer.address.state
  xx_NEW_in_new_england(state_code)
end

def xx_NEW_in_new_england(state_code)
  ["MA", "CT", "ME", "VT", "NH", "RI"].include?(state_code)
end
