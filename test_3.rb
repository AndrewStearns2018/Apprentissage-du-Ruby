def is_square(n)
  array_of_factors = (1..n).to_a
  array_of_factors.each do |factor|
    if factor * factor == n
      return true
    end
  end
  return false
end


puts is_square(4) == true
puts is_square(1) == true
puts is_square(25) == true
puts is_square(73) == false
puts is_square(23) == false
puts is_square(35) == false

def is_perfect(n)
  array_of_factors = [1]
  (2...n).each do |factor|
    if n % factor == 0
      array_of_factors.push(factor)
    end
  end
  index = 0
  current_sum = 0
  while index < array_of_factors.length
    current_sum += array_of_factors[index]
    index += 1
  end
  if current_sum == n
    return true
  else
    return false
  end
end
"""
def is_perfect(n)
  array_of_factors = [1]
  array_of_potential_factors1 = (2...n).to_a
  array_of_potential_factors2 = (2...n).to_a
  array_of_potential_factors1.each do |factor1|
    array_of_potential_factors2.each do |factor2|
      if factor1 * factor2 == n && (factor1 != factor2) && (not array_of_factors.include?(factor1)) && (not array_of_factors.include?(factor2))
        array_of_factors.push(factor1).push(factor2)
      end
    end
  end
  puts array_of_factors
  index = 0
  current_sum = 0
  while index < array_of_factors.length
    current_sum += array_of_factors[index]
    index += 1
  end
  #puts current_sum
  if current_sum == n
    return true
  else
    false
  end
end

puts is_perfect(6) == true
puts is_perfect(12) == false
puts is_perfect(122) == false
puts is_perfect(28) == true
puts is_perfect(496) == true
puts is_perfect(8128) == true
puts is_perfect(4) == false
puts is_perfect(57) == false

"""

def third_longest(string)
 hash = {}
 string.split.each do |word|
   if not hash.include?(word)
     hash[word] = word.length
   end
 end
 v_array = hash.values.sort.reverse.uniq
 puts v_array
 if v_array.length >= 3
  hash.select!{|k, v| v == v_array[2]}
  return hash.keys.sort
else
  v_array.length < 3
  hash.select!{|k, v| v == v_array.last}
  return hash.keys.sort
  end
end

puts third_longest("four score and seven years ago") == ["ago", "and"]
puts third_longest("I am that I am") == ["I"]
puts third_longest("We few we happy few we band of brothers") == ["band"]
puts third_longest("A") == ["A"]


def is_vowely(string)
  array_of_two_letters = string.scan(/.{1,2}/)
  vowels = ["a", "e", "i", "o", "u"]
  v_start = 0
  c_start = 0
  array_of_two_letters.each do |letter_combo|
    if vowels.include?(letter_combo[0]) || (letter_combo[0] == " " && vowels.include?(letter_combo[1]))
      v_start += 1
    else
      c_start += 1
    end
  end
  puts array_of_two_letters
  if v_start >= c_start
    return true
  else
    false
  end

end

puts is_vowely('abbb') == true
puts is_vowely('the war is on') == false
puts is_vowely('the tall cat takes off a hat') == true
puts is_vowely('i am that i am') == true
