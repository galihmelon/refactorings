require "minitest/autorun"
require_relative "extract_function"

class ExtractFunctionTest < MiniTest::Test
  def setup
    order_1 = Order.new(1)
    order_2 = Order.new(2)
    order_3 = Order.new(3)
    @invoice = Invoice.new("My Name", [order_1, order_2, order_3])
  end

  def test_original
    Date.stub :today, DateTime.new(2023, 2, 23) do
      assert_extract_function(ExtractFunctionOriginal.new)
    end
  end

  def test_refactored
    Date.stub :today, DateTime.new(2023, 2, 23) do
      assert_extract_function(ExtractFunctionRefactored.new)
    end
  end

  def assert_extract_function(extract_function)
    assert_output(/Customer Owes/) { extract_function.print_owning(@invoice) }
    assert_output(/name: My Name/) { extract_function.print_owning(@invoice) }
    assert_output(/amount: 6/) { extract_function.print_owning(@invoice) }
    assert_output(/due: 2023-03-25/) { extract_function.print_owning(@invoice) }
  end
end
