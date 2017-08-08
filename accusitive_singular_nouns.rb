def masc_accusitive_singular_noun_decliner(nominative_singular, animation)
  noun_length = nominative_singular.length
  if nominative_singular[noun_length-1] == "'"
    if animation == "no"
      return nominative_singular
    else
      return nominative_singular[0..noun_length-2]+ "ya"
    end
  end

  if nominative_singular[noun_length-1] == "a"
    return nominative_singular[0..noun_length-2] + "u"
  else
    return nominative_singular
  end
end

puts "Type masculine sigular noun in the nominative."
noun = gets.chomp
puts "Tell us whether that bad boy is animated yes or no."
animationx = gets.chomp
puts masc_accusitive_singular_noun_decliner(noun, animationx)
