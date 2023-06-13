def rating(a_driver)
  more_than_five_late_deliveries(a_driver) ? 2 : 1
end

def more_than_five_late_deliveries(dvr)
  dvr.number_of_late_deliveries > 5
end

class Driver
  attr_accessor :number_of_late_deliveries
end
