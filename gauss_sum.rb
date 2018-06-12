# Gauß needs help! (Sums of a lot of numbers)
# problem statement: Due to another of his misbehaved, the primary school's teacher of the young Gauß, Herr J.G. Büttner, to keep the bored and unruly young schoolboy Karl Friedrich Gauss busy for a good long time, while he teaching arithmetic to his mates, assigned him the problem of adding up all the whole numbers from 1 through a given number n. Your task is to help the young Carl Friedrich to solve this problem as quickly as you can; so, he can astonish his teacher and rescue his recreation interval.

# example: f(n=100) -->returns 5050

require 'minitest/autorun'
class Gauss
  def add(num)
    if(num.class == Integer and num > 0)
      sum  = (1..num).to_a.inject(:+)
      return sum
    else
      return false
    end
  end
end


class TestGauss < Minitest::Test
  def setup
    @gauss = Gauss.new
  end

  def test_that_sum_of_number_is_returned
    assert_equal 5050, @gauss.add(100)
    assert_equal 20100, @gauss.add(200)
    assert_equal 80200, @gauss.add(400)
  end
end

