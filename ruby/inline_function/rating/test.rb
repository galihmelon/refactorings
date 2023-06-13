require "minitest/autorun"

require_relative "original"
alias original_rating rating

require_relative "refactored"
alias refactored_rating rating

class Test < MiniTest::Test
  def test_original
    a_driver = Driver.new
    a_driver.number_of_late_deliveries = 5
    assert_equal original_rating(a_driver), 1
    a_driver.number_of_late_deliveries = 6
    assert_equal original_rating(a_driver), 2
  end

  def test_refactored
    a_driver = Driver.new
    a_driver.number_of_late_deliveries = 5
    assert_equal refactored_rating(a_driver), 1
    a_driver.number_of_late_deliveries = 6
    assert_equal refactored_rating(a_driver), 2
  end
end
