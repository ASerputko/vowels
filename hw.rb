VOWELS = 'aeiouyAEIOUY'

file = File.join(File.dirname(__FILE__), "external.txt")
File.open(file).each_with_index do |line, index|
	vowels_number = line.scan(/[#{VOWELS}]/).count

	puts "Line ##{index + 1} does not have vowels"        if vowels_number == 0
	puts "Line ##{index + 1} has #{vowels_number} vowel"  if vowels_number == 1
	puts "Line ##{index + 1} has #{vowels_number} vowels" if vowels_number > 1
end	