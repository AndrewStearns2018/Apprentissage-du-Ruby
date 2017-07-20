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

this converts 5 and 6 to integers and then adds them. instead try this:
"""

def sum_strings_together(first_string, second_string)
  first_string = first_string.to_i
  second_string = second_string.to_i
  sum = first_string + second_string

  return sum
end

puts(sum_strings_together("5", "14"))
puts(sum_strings_together("4", "11"))
puts(sum_strings_together("1", "10000000"))

"""
what does this code do? it defines a function (with 'def') called sum_strings_together that takes a pair
of strings as 'arguments' (first_string and second_string), converts them to integers,
adds them, and then returns that variable. Any two string integers can be passed in as arguments!

Lines 54-56 are function 'calls' that actually put the function into action

Since the variable you defined in line 13 called 'integer_conversion' is global, it can be used
anywhere in the program, like this:

"""
puts(sum_strings_together(integer_conversion.to_s, "4"))
puts(sum)

"""
why does puts(sum) fail? look at the traceback! it is because sum (defined in line 49) is
a variable ONLY defined inside the function (it is not global)
and the puts function doesn't know about it since it only exists inside the function. this idea
that some variables defined locally within functions don't exist as far as the rest of the program
is concerned is called 'variable scope'.

"""
