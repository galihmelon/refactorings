require "minitest/autorun"
require_relative "extract_function"

class ExtractFunctionTest < MiniTest::Test
  def test_print_details
    extract_function = ExtractFunction.new("My Name")
    assert_output(/name: My Name/) { extract_function.print_owning(123) }
    assert_output(/amount: 123/) { extract_function.print_owning(123) }
  end
end
