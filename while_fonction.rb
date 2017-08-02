

#def is_sargon_king(king)
#  if king == "Sargon" || king == "sargon"
#    return "You know your history."
#  else
#    return "That's not right. Try again"
#  end
#end

#puts "Who was the first Akkadian king?"


#new_king = gets.chomp

#while new_king != "Sargon" || new_king != "sargon"
#  puts is_sargon_king(new_king)
#  new_king = gets.chomp

#end


def history_quiz(question, answer)
  puts question
  how_dumb = "really "
  new_answer = gets.chomp.downcase()
  while new_answer != answer.downcase()
    puts "you are " + how_dumb + "dumb"
    how_dumb  = how_dumb + "really "
    new_answer = gets.chomp
    if new_answer == answer.downcase()
      break
    end
  end
  return "you are smart"
end

puts history_quiz("who was the first Akkadian king?", "Sargon")
