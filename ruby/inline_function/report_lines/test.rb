require "minitest/autorun"

require_relative "original"
alias report_lines_original report_lines

require_relative "refactored"
alias report_lines_refactored report_lines

class Test < MiniTest::Test
  def test_original
    a_customer = Customer.new
    a_customer.name = "Not My Name"
    a_customer.location = "Not Where I Live"

    expected_lines = [["name", "Not My Name"], ["location", "Not Where I Live"]]
    actual_lines = report_lines_original(a_customer)

    assert_equal expected_lines, actual_lines
  end

  def test_refactored
    a_customer = Customer.new
    a_customer.name = "Not My Name"
    a_customer.location = "Not Where I Live"

    expected_lines = [["name", "Not My Name"], ["location", "Not Where I Live"]]
    actual_lines = report_lines_refactored(a_customer)

    assert_equal expected_lines, actual_lines
  end
end
