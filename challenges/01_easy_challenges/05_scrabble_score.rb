=begin
PROBLEM
explicit:
  compute the Scrabble score for a word
  A, E, I, O, U, L, N, R, S, T => 1
  D, G => 2
  B, C, M, P => 3
  F, H, V, W, Y => 4
  K => 5
  J, X => 8
  Q, Z => 10
implicit:
  `Scrabble` class
  `new` method takes string
    strip whitespace or new lines
    nil is empty string
    case insensitive
  `score` instance method returns integer score
  `score` class method exists for convenient scoring
=end

class Scrabble
  @@conversion = {
    %w(A E I O U L N R S T) => 1,
    %w(D G) => 2,
    %w(B C M P) => 3,
    %w(F H V W Y) => 4,
    %w(K) => 5,
    %w(J X) => 8,
    %w(Q Z) => 10
  }

  def initialize(word)
    word = "" if word.nil?
    @word = word.downcase.strip
  end

  def score
    scrabble_score = 0
    @word.each_char do |char|
      @@conversion.each do |array, value|
        if array.include?(char.upcase)
          scrabble_score += value
          break
        end
      end
    end
    scrabble_score
  end

  def self.score(word)
    Scrabble.new(word).score
  end
end

# 15:00
