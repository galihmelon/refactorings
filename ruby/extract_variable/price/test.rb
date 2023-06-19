require "minitest/autorun"
require_relative "others"

class Test < MiniTest::Test
  def test_original_with_discount
    require_relative "original"
    alias price_original price

    order = Order.new
    order.quantity = 800
    order.item_price = 2

    expected = 1670.0
    actual = price_original(order)
    assert_equal expected, actual
  end

  def test_original_without_discount
    require_relative "original"
    alias price_original price

    order = Order.new
    order.quantity = 100
    order.item_price = 2

    expected = 220.0
    actual = price_original(order)
    assert_equal expected, actual
  end

  def test_original_with_basic_shipping
    require_relative "original"
    alias price_original price

    order = Order.new
    order.quantity = 100
    order.item_price = 2

    expected = 220.0
    actual = price_original(order)
    assert_equal expected, actual
  end

  def test_original_with_extra_shipping
    require_relative "original"
    alias price_original price

    order = Order.new
    order.quantity = 100
    order.item_price = 20

    expected = 2100.0
    actual = price_original(order)
    assert_equal expected, actual
  end

  def test_refactored_with_discount
    require_relative "refactored"
    alias price_refactored price

    order = Order.new
    order.quantity = 800
    order.item_price = 2

    expected = 1670
    actual = price_refactored(order)
    assert_equal expected, actual
  end

  def test_refactored_without_discount
    require_relative "refactored"
    alias price_refactored price

    order = Order.new
    order.quantity = 100
    order.item_price = 2

    expected = 220.0
    actual = price_refactored(order)
    assert_equal expected, actual
  end

  def test_refactored_with_basic_shipping
    require_relative "refactored"
    alias price_refactored price

    order = Order.new
    order.quantity = 100
    order.item_price = 2

    expected = 220.0
    actual = price_refactored(order)
    assert_equal expected, actual
  end

  def test_refactored_with_extra_shipping
    require_relative "refactored"
    alias price_refactored price

    order = Order.new
    order.quantity = 100
    order.item_price = 20

    expected = 2100.0
    actual = price_refactored(order)
    assert_equal expected, actual
  end
end
