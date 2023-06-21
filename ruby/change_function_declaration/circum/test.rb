require "minitest/autorun"

class Test < MiniTest::Test
  def test_original
    require_relative "original"
    radius = 1
    expected = 6.283185307179586
    actual = circum(radius)
    assert_equal expected, actual
  end

  def test_refactored
    require_relative "refactored"
    radius = 1
    expected = 6.283185307179586
    actual = circum(radius)
    assert_equal expected, actual

    actual = circumference(radius)
    assert_equal expected, actual
  end
end
