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

"""
thomas' comments:

always try to avoid using 'global variables' in computer programs.
these are variables that are set on left-most part of the screen, like

x = 4

'global' means that the entire program has access to that variable.
Instead you should try to organize a program into individual functions
(methods) than do a single simple task and can then be combined.

For example, above you have

integer_conversion = '5'.to_i + '6'.to_i

this converts a pair of strings to integers. instead try this:
"""

def sum_strings_together(first_string, second_string)
  first_string = first_string.to_i
  second_string = second_string.to_i
  sum = first_string.to_i + second_string.to_i

  return sum
end

puts(sum_strings_together("5", "14"))
puts(sum)

"""
what does this code do? it defines a function (with 'def') that takes a pair
of strings as 'arguments' (first_string and second_string), coverts them to integers
and then returns that variable.

why does puts(sum) fail? because sum is a variable ONLY defined inside the function (it is not global)
"""
