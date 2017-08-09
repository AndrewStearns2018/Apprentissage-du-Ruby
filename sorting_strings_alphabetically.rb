def sorting_strings_by_order(string)
  return string.split("b").sort
  #split with an argument splits around that letter
end

puts "Let me alphabetically sort out the words in the sentence you type."
stringx = gets.chomp
puts sorting_strings_by_order(stringx)
