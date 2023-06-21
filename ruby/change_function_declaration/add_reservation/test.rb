require "minitest/autorun"
require_relative "others"

class Test < MiniTest::Test
  def setup
    @customer = Customer.new
    @customer.name = "Roaring Wren"
  end

  def test_original
    require_relative "original"
    system = Book.new
    system.add_reservation(@customer)

    assert_equal @customer, system.reservations&.first
  end

  def test_refactored_usual_queue
    require_relative "refactored"
    system = Book.new
    system.add_reservation(@customer)

    assert_equal @customer, system.reservations&.first
    refute_equal @customer, system.priority_reservations&.first
  end

  def test_refactored_priority_queue
    require_relative "refactored"
    system = Book.new
    system.zz_add_reservation(@customer, true)

    refute_equal @customer, system.reservations&.first
    assert_equal @customer, system.priority_reservations&.first
  end
end
