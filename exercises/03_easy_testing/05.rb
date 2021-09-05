require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use!

class Test < Minitest::Test
  def test_includes
    list = ["xyz", "abc", "123"]
    assert_includes(list, "xyz")
  end
end
