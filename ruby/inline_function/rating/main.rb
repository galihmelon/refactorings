require_relative "original"
alias original_rating rating

require_relative "refactored"
alias refactored_rating rating

a_driver = Driver.new

a_driver.number_of_late_deliveries = 0
puts original_rating(a_driver)
puts refactored_rating(a_driver)

a_driver.number_of_late_deliveries = 9
puts original_rating(a_driver)
puts refactored_rating(a_driver)
