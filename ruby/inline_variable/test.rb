require 'minitest/autorun'
require_relative 'others'

class Test < MiniTest::Test
  def test_original
    require_relative 'original'
    order = Order.new

    order.base_price = 1200
    assert base_price_above_threshold?(order)

    order.base_price = 800.75
    refute base_price_above_threshold?(order)
  end

  def test_refactored
    require_relative 'refactored'
    order = Order.new

    order.base_price = 1200
    assert base_price_above_threshold?(order)

    order.base_price = 800.75
    refute base_price_above_threshold?(order)
  end
end
