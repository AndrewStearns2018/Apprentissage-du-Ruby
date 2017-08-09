def sort_by_word_length(string)
  hash = {}
  words = string.split
  words.each do |member|
    hash[member] = member.length
  end
  return hash.sort
end

puts "Let me sort by length the words you type"
stringx = gets.chomp
puts sort_by_word_length(stringx)
