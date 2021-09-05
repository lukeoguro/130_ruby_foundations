require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use!

class Test < Minitest::Test
  def test_instance_of
    value = Numeric.new
    assert_instance_of(Numeric, value)
  end
end
