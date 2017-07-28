
mesopotamian_cities = [
"Ur",
"Urak",
"Lagash",
"Dar-Sharukin",
"Mari"]

puts mesopotamian_cities.length
puts mesopotamian_cities[0]

index = -1

while index < mesopotamian_cities.length
  puts mesopotamian_cities[3]
  index = index + 1


end

# naming the cities in reverse

chiffre = 4

while chiffre > - 1
puts mesopotamian_cities [chiffre]
chiffre = chiffre - 1
end


#the push method helps us add things to arrays

french_cities = []

#commands = r["Donnez-moi une première ville",
#"Donnez-moi une deuxième ville",
#"Donnez-moi une troisième ville",
#"Donnez-moi une quatrième ville",
#"Donnez-moi une dernière ville"]

#ordinal = 0
#ordinal = ordinal + 1

while french_cities.length < 5
#  puts commands [ordinal]
  puts "Name me a French city"
  city = gets.chomp
  french_cities.push(city)
puts "merci"

end
#unshift adds things to the array in reverse, adding them to the start of the array
