# rubocop:disable Layout/LineLength
=begin

Write a program to determine whether a triangle is equilateral, isosceles, or scalene.
An equilateral triangle has all three sides the same length.
An isosceles triangle has exactly two sides of the same length.
A scalene triangle has all sides of different lengths.
Note: For a shape to be a triangle at all, all sides must be of length > 0, and the sum of the lengths of any two sides must be greater than the length of the third side.

PROBLEM
explicit:
  write a program that determines whether a triangle is equilateral, isosceles, or scalene
  types of triangles:
    an equilateral triangle has all 3 sides the same length
    an isosceles triangle has two sides of the same length
    a scalene triangle has all sides of different lengths
  invalid triangles:
    All lengths must be greater than 0
    sum of length of any two sides must be greater than length of third side
implicit:
  `kind` instance method returns `equilateral`, `isosceles`, or `scalene`
  Raise ArgumentError when creating any invalid triangles
=end
# rubocop:enable Layout/LineLength

class Triangle
  def initialize(*sides)
    @sides = sides.sort
    raise ArgumentError unless @sides.any? { |side| side <= 0 } ||
                               @sides[0..1].inject(:+) <= @sides[2]
  end

  def kind
    if @sides[0] == @sides[1] && @sides[1] == @sides[2]
      'equilateral'
    elsif @sides[0] == @sides[1] || @sides[1] == @sides[2]
      'isosceles'
    else
      'scalene'
    end
  end
end

# 21:30
