# rubocop:disable Layout/LineLength
=begin
PROBLEM
explicit:
  write a program that takes a word and a list of anagrams and selects the correct sublist that contains the anagrams of the word
implicit:
  class `Anagram`
  `new` method takes one string
  `match` method takes an array and returns an array of anagrams
    identical words are not anagrams
    anagrams are case insensitive, but return array includes original capitalization
=end
# rubocop:enable Layout/LineLength

class Anagram
  def initialize(string)
    @string = string
  end

  def match(array)
    sublist = []
    array.each do |word|
      sublist << word if anagram?(word)
    end
    sublist
  end

  private

  def anagram?(other_string)
    return false if @string.size != other_string.size ||
                    @string.downcase == other_string.downcase
    string = @string.clone.downcase
    other_string.downcase.each_char do |char|
      index = string.index(char)
      return false if index.nil?
      string.slice!(index)
    end
    true
  end
end

# 19:00
