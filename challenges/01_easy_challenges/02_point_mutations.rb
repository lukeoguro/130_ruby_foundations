# rubocop:disable Layout/LineLength
=begin

Write a program that can calculate the Hamming distance between two DNA strands.

A mutation is simply a mistake that occurs during the creation or copying of a nucleic acid, in particular DNA. Because nucleic acids are vital to cellular functions, mutations tend to cause a ripple effect throughout the cell. Although mutations are technically mistakes, a very rare mutation may equip the cell with a beneficial attribute. In fact, the macro effects of evolution are attributable by the accumulated result of beneficial microscopic mutations over many generations.

The simplest and most common type of nucleic acid mutation is a point mutation, which replaces one base with another at a single nucleotide.

By counting the number of differences between two homologous DNA strands taken from different genomes with a common ancestor, we get a measure of the minimum number of point mutations that could have occurred on the evolutionary path between the two strands.

This is called the Hamming distance.

The Hamming distance is only defined for sequences of equal length. If you have two sequences of unequal length, you should compute the Hamming distance over the shorter length.

PROBLEM
explicit:
  write a program that calculates the Hamming distance between two strands of DNA (strings)
  the Hamming distance is the number of differences in two strings
  if the string has unequal lengths, compute the Hamming distance until the shorter length
implicit:
  `DNA` class
  `new` class method takes one string (initial DNA)
  `hamming_distance` method takes one string (comparison DNA) and returns integer
=end
# rubocop:enable Layout/LineLength

class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other_strand)
    counter = 0
    shorter_strand, longer_strand = [@strand, other_strand].sort_by(&:length)
    0.step(shorter_strand.size - 1) do |index|
      counter += 1 if shorter_strand[index] != longer_strand[index]
    end
    counter
  end
end

# 9:15
