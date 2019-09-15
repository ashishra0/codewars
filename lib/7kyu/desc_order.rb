# Descending Order
# problem statement: make a function that can take any non-negative integer as a argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.

require "minitest/autorun"

class Descending

  def descending_order(n)
    num = n.to_s.split('').sort.reverse
    new_number = num.join("").to_i
    return new_number
  end

end

class TestDescending < Minitest::Test

  def setup
    @obj = Descending.new
  end

  def test_that_number_is_highest_possible
    assert_equal 4332, @obj.descending_order(2343)
    assert_equal 5544, @obj.descending_order(5454)
    assert_equal 9876543210, @obj.descending_order(1234567890)
  end

end
