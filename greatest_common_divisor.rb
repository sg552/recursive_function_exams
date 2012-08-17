# 54 = 27x 2 = 18 x 3 = 9 x 6, so the divisors are : [1,2,3,6,9,18,27,54]
# 24 = 12 x 2 = 8 x 3 = 4 x 6, so the divisors are : [1,2,3,4,6,8,12,24]
# the common divisors of 54 and 24 are : [1,2,3,6]
# so the greatest common divisor is: 6

# DON'T do like this....
def get_divisors n
  result = []
  (1..n/2).each do |i|
    result << i if n % i == 0
  end
  result << n if n >= 2
  return result
end

def get_greatest_common_divisors(a,b)
  get_divisors(a) & get_divisors(b)
end

# use this method
# need a > b
def get_greatest_common_divisors_simplest(a, b)
  return a if b == 0
  get_greatest_common_divisors_simplest(b, a%b)
end

require 'test/unit'
class DivisorsTest < Test::Unit::TestCase
  def test_get_greatest_common_divisors_simplest
    assert_equal 6, get_greatest_common_divisors_simplest(54, 24)
  end
  def test_should_get_divisiors
    assert_equal [1, 2],  get_divisors(2)
    assert_equal [1, 2, 4, 8],  get_divisors(8)
    assert_equal [1,2,3,6,9,18,27,54],  get_divisors(54)
  end
  def test_get_greatest_common_divisors
    assert_equal [1,2,3,6], get_greatest_common_divisors(54,24)
  end
end
