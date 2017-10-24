def three_consecutive(string)
  vowel_array = ["a", "e", "i", "o", "u"]
  (0..string.length - 3).each do |index|
    if string[index] == string[index + 1] && (string[index] == string[index + 2]) && (not vowel_array.include?(string[index]))
      return true
    end
  end
  return false
end

puts three_consecutive("ccc") == true
puts three_consecutive("adddl") == true
puts three_consecutive("aaa") == false
puts three_consecutive("cdciciii") == false
puts three_consecutive("pp") == false
puts three_consecutive("abbb") == true
puts three_consecutive("bbba") == true

def numeral(n)
  if n > 10000
    return "Gurl, you knows that number be too big for roman numerals and shit."
  end
    roman_string = ""
    thousands = n / 1000
    roman_string += "M" * thousands
    n -= 1000 * thousands
    if n < 1000 && n >= 900
      roman_string += "XM"
      n -= 900
    end
    fivehundreds = n / 500
    roman_string += "D" * fivehundreds
    n -= 500 * fivehundreds
    if n >= 400
      roman_string += "CD"
      n -= 400
    else
      hundreds = n / 100
      roman_string += "C" * hundreds
      n -= 100 * hundreds
    end
    if n >= 90
      roman_string += "XC"
      n -= 90
    end
    if n >= 50
      roman_string += "L"
      n -= 50
    end
    if n < 50 && n >= 40
      roman_string += "XL"
      n -= 40
    end
    if n < 40
      tens = n / 10
      roman_string += "X" * tens
      n -= 10 * tens
    end
    if n == 9
      roman_string += "IX"
      n -= 9
    elsif n < 9 && n > 5
      fives = n / 5
      roman_string += "V"
      n -= 5 * fives
    end
    if n == 4
      roman_string += "IV"
      n -= 4
    else n < 4
      ones = n / 1
      roman_string += "I" * ones
      n -= 1 * ones
    end
  puts n
  return roman_string
end

puts numeral(3500)
puts numeral(11000)
puts numeral(3669)
puts numeral(14)
puts numeral(400)
puts numeral(900)
puts numeral(999)
puts numeral(1789)
puts numeral(1444)

def no_repeat(string)
  hash_of_string = {}
  string.downcase.split("").each do |letter|
    if not hash_of_string.include?(letter)
      hash_of_string[letter] = 1
    end
  end
  return hash_of_string.keys.join
end

puts no_repeat("hello") == "helo"
puts no_repeat("where are the bitches") == "wher atbics"
puts no_repeat("aa") == "a"
puts no_repeat("aba") == "ab"
puts no_repeat("Aba") == "ab"


def no_repeat2(string)
  no_repeat_string = ""
  string.downcase.split("").each do |letter|
    if not no_repeat_string.include?(letter)
      no_repeat_string += letter
    end
  end
  return no_repeat_string
end

puts no_repeat("hello") == "helo"
puts no_repeat("where are the bitches") == "wher atbics"
puts no_repeat("aa") == "a"
puts no_repeat("aba") == "ab"
puts no_repeat("Aba") == "ab"
