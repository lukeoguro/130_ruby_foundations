require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use!

class Test < Minitest::Test
  def test_refute_includes
    list = ["abc", "efg", "123"]
    refute_includes(list, "xyz")
  end
end
