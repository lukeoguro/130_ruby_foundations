# rubocop:disable Layout/LineLength
=begin

Write some code that converts modern decimal numbers into their Roman number equivalents.

PROBLEM
explicit:
  write a program that converts an integer to the Roman equivalent string
  The letters used are I, V, X, L, C, D, M
implicit:
  1 -> I
  4 -> IV
  5 -> V
  9 -> IX
  10 -> X
  40 -> XL
  50 -> L
  90 -> XC
  100 -> C
  400 -> CD
  500 -> D
  900 -> CM
  1000 -> M
=end
# rubocop:enable Layout/LineLength

class RomanNumeral
  @@conversion = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }

  def initialize(int)
    @int = int
  end

  def to_roman
    remainder = @int
    roman_string = ""
    @@conversion.each do |int, roman|
      quotient, remainder = remainder.divmod(int)
      roman_string << roman * quotient
    end
    roman_string
  end
end

# 18:00
