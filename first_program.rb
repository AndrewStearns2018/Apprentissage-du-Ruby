puts("Hello world!")
puts(5 - 6)
puts(17 / 3)
puts(17.0 / 3)
puts(17 / 3.0)
puts(17.fdiv(3))

puts("Tapez votre nom")

name = gets()
puts(name)

integer_conversion = "5".to_i + "6".to_i
concatenation = "lier" + "des" + "mots" + "les" + "uns" + "aux" + "autres"
puts (concatenation)


puts ("Type a number you want squared")
the_number = gets()
puts (the_number.to_i * the_number.to_i)


puts ("Tapez votre nom pour dire bonjour")
nom = gets.chomp
puts ("Je m'appelle " + nom + ". " + "Comment vous appelez-vous ?")
