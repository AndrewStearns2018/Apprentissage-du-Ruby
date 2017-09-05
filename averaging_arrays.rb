def averaging_array(new_array)
  array_sum = 0
  new_array.each do |member|
    array_sum += member
  end
  return array_sum / new_array.length.to_f
end
#puts averaging_array([1.5, 2.5, 3.5])

def median_of_array(new_array)
  new_array = new_array.sort
  if new_array.length % 2 == 1
    return new_array[new_array.length / 2]
  else
    first_value = new_array[new_array.length / 2]
    second_value = new_array[new_array.length / 2 - 1]
    return averaging_array([first_value, second_value])
  end
end
puts median_of_array([1, 2, 3, 4])

def finding_the_mode({})
  


def anagram_tester(string, string_anagram)
  if string.reverse == string_anagram
    return "This is an anagram."
  else
    return "This is not an anagram."
  end
end

puts anagram_tester("hello", "olleh")
