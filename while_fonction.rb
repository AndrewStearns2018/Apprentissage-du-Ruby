

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


puts "who was the first Akkadian king?"

new_king = gets.chomp

while new_king != "sargon" || new_king != "Sargon"
  puts  "try again"
  new_king = gets.chomp


  if new_king == "sargon" || new_king == "Sargon"
    puts "you are smart"
  end
end
