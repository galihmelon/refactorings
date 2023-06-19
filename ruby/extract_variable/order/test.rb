require "minitest/autorun"
require_relative "others"

require_relative "original"
OrderOriginal = Order.dup

require_relative "refactored"
OrderRefactored = Order.dup

class Test < MiniTest::Test
  def test_original_with_quantity_discount
    record = Record.new
    record.quantity = 800
    record.item_price = 2
    order = OrderOriginal.new(record)

    expected = 1670.0
    actual = order.price
    assert_equal expected, actual
  end

  def test_original_without_quantity_discount
    record = Record.new
    record.quantity = 100
    record.item_price = 2
    order = OrderOriginal.new(record)

    expected = 220.0
    actual = order.price
    assert_equal expected, actual
  end

  def test_original_with_shipping_discount
    record = Record.new
    record.quantity = 1000
    record.item_price = 25
    order = OrderOriginal.new(record)

    expected = 24475.0
    actual = order.price

    assert_equal expected, actual
  end

  def test_original_without_shipping_discount
    record = Record.new
    record.quantity = 100
    record.item_price = 20
    order = OrderOriginal.new(record)

    expected = 2100.0
    actual = order.price
    assert_equal expected, actual
  end

  def test_refactored_with_quantity_discount
    record = Record.new
    record.quantity = 800
    record.item_price = 2
    order = OrderRefactored.new(record)

    expected = 1670.0
    actual = order.price
    assert_equal expected, actual
  end

  def test_refactored_without_quantity_discount
    record = Record.new
    record.quantity = 100
    record.item_price = 2
    order = OrderRefactored.new(record)

    expected = 220.0
    actual = order.price
    assert_equal expected, actual
  end

  def test_refactored_with_shipping_discount
    record = Record.new
    record.quantity = 1000
    record.item_price = 25
    order = OrderRefactored.new(record)

    expected = 24475.0
    actual = order.price
    assert_equal expected, actual
  end

  def test_refactored_without_shipping_discount
    record = Record.new
    record.quantity = 100
    record.item_price = 20
    order = OrderRefactored.new(record)

    expected = 2100.0
    actual = order.price
    assert_equal expected, actual
  end
end
