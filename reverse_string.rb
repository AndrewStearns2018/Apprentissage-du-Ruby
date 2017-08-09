def reverse(string)
  reversed_string = ""
  (1..string.length).each do |index|
    reversed_string += string[string.length - index]
  end

  return reversed_string
end


puts reverse('this is not a palindrome')
