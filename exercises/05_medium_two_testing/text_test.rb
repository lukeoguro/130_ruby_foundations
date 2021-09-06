require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'text'

class TextTest < Minitest::Test
  def setup
    @file = File.new('sample_text.txt', 'r')
    @text = Text.new(@file.read)
    @file.rewind
  end

  def test_swap
    assert_equal(@file.read.gsub('a', 'e'), @text.swap('a', 'e'))
  end

  def test_word_count
    assert_equal(@file.read.split.count, @text.word_count)
  end

  def teardown
    @file.close
  end
end