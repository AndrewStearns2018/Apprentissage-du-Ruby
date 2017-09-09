def letter_count(word)
  count = {}
  word_array = word.split("")
  word_array.each do |letter|
    if not count.include?(letter)
      count[letter] = 1
    else
      count[letter] += 1
    end
  end
  return count
end

def is_anagram(word1, word2)
  return letter_count(word1) == letter_count(word2)
end

puts is_anagram('vladimirokov', 'viloom')
