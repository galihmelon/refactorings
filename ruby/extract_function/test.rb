require "minitest/autorun"
require_relative "others"

class Test < MiniTest::Test
  def setup
    order_1 = Order.new(1)
    order_2 = Order.new(2)
    order_3 = Order.new(3)
    @invoice = Invoice.new("My Name", [order_1, order_2, order_3])
  end

  def test_original
    require_relative "original"
    alias print_owning_original print_owning

    Date.stub :today, DateTime.new(2023, 2, 23) do
      assert_print_owning(:print_owning_original)
    end
  end

  def test_refactored
    require_relative "refactored"
    alias print_owning_refactored print_owning

    Date.stub :today, DateTime.new(2023, 2, 23) do
      assert_print_owning(:print_owning_refactored)
    end
  end

  def assert_print_owning(method_name)
    print_owning = method(method_name)
    assert_output(/Customer Owes/) { print_owning(@invoice) }
    assert_output(/name: My Name/) { print_owning(@invoice) }
    assert_output(/amount: 6/) { print_owning(@invoice) }
    assert_output(/due: 2023-03-25/) { print_owning(@invoice) }
  end
end
