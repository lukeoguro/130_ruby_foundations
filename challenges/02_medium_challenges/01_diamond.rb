class Diamond
  def self.make_diamond(end_letter)
    width = (end_letter.ord - 64) * 2 - 1
    space_count = -1
    rows = []
    ("A"..end_letter).each do |letter|
      rows << make_row(letter, width, space_count)
      space_count += 2
    end
    rows.join + rows.reverse[1..-1].join
  end

  def self.make_row(letter, width, space_count)
    if space_count < 0
      letter.center(width) + "\n"
    else
      "#{letter}#{' ' * space_count}#{letter}".center(width) + "\n"
    end
  end
end

# 28:00
