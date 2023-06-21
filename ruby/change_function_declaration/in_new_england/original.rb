def in_new_england(a_customer)
  ["MA", "CT", "ME", "VT", "NH", "RI"].include?(a_customer&.address&.state)
end
