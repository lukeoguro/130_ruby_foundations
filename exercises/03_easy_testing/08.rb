require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use!

class Test < Minitest::Test
  def test_kind_of
    value = 3
    assert_kind_of(Numeric, value)
  end
end
