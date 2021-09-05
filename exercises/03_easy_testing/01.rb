require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class Test < Minitest::Test
  def test_odd
    value = 5
    assert_equal(5 % 2 == 1, value.odd?)
  end
end
