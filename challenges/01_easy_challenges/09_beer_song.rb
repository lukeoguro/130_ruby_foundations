class BeerSong
  def self.verse(n)
    case n
    when 3..99 then verse_3_to_99(n)
    when 2 then verse_2
    when 1 then verse_1
    when 0 then verse_0
    end
  end

  def self.verses(max, min)
    max.step(min, -1).map { |n| verse(n) }.join("\n")
  end

  def self.lyrics
    verses(99, 0)
  end

  def self.verse_3_to_99(n)
    "#{n} bottles of beer on the wall, #{n} bottles of beer.\n" \
    "Take one down and pass it around, #{n - 1} bottles of beer on the wall.\n"
  end

  def self.verse_2
    "2 bottles of beer on the wall, 2 bottles of beer.\n" \
    "Take one down and pass it around, 1 bottle of beer on the wall.\n"
  end

  def self.verse_1
    "1 bottle of beer on the wall, 1 bottle of beer.\n" \
    "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end

  def self.verse_0
    "No more bottles of beer on the wall, no more bottles of beer.\n" \
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

  private_class_method :verse_3_to_99, :verse_2, :verse_1, :verse_0
end

# 15:15
