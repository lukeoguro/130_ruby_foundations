require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use!

class Test < Minitest::Test
  def test_nil
    value = nil
    assert_nil(value)
  end
end
