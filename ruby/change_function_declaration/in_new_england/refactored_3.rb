# Apply Inline Variable
def in_new_england(a_customer)
  xx_NEW_in_new_england(a_customer.address.state)
end

def xx_NEW_in_new_england(state_code)
  ["MA", "CT", "ME", "VT", "NH", "RI"].include?(state_code)
end
