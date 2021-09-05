class TextAnalyzer
  def process
    File.open("02_sample_text.txt", "r") do |file|
      yield(file)
    end
  end
end

analyzer = TextAnalyzer.new
analyzer.process do |file|
  paragraphs = 1
  lines = 0
  words = 0
  file.each do |line|
    lines += 1
    paragraphs += 1 if line == "\n"
    words += line.split.count
  end
  puts "#{paragraphs} paragraphs"
  puts "#{lines} lines"
  puts "#{words} words"
end
