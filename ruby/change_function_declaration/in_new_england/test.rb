require "minitest/autorun"
require_relative "others"

class Test < MiniTest::Test
  def setup
    @customer = Customer.new
  end

  def test_original_in_new_england
    require_relative "original"
    alias in_new_england_original in_new_england

    @customer.address = Address.new
    @customer.address.state = "RI"
    is_in_new_england = in_new_england_original(@customer)

    assert is_in_new_england
  end

  def test_original_not_in_new_england
    require_relative "original"
    alias in_new_england_original in_new_england

    @customer.address = Address.new
    @customer.address.state = "IR"
    is_in_new_england = in_new_england_original(@customer)

    refute is_in_new_england
  end

  def test_refactored_in_new_england
    require_relative "refactored_4"
    alias in_new_england_refactored in_new_england

    @customer.address = Address.new
    @customer.address.state = "RI"
    is_in_new_england = in_new_england_refactored(@customer.address.state)

    assert is_in_new_england
  end

  def test_refactored_not_in_new_england
    require_relative "refactored_4"
    alias in_new_england_refactored in_new_england

    @customer.address = Address.new
    @customer.address.state = "IR"
    is_in_new_england = in_new_england_refactored(@customer.address.state)

    refute is_in_new_england
  end
end
