"""

This is a timed test with 4 problems. Below, I've included tests that your code
needs to pass in order to succeed on the test. You won't strictly be judged by
passing the tests, but they form a major contributor to your score.

I suggest liberal use of irb to work these problems.

Write your code directly above the tests for each problem.

"""

"""
PROBLEM 1:

Write method called 'is_palindrome' which takes string as an argument and
returns a boolean value for whether the string is a palindrome.
You are not allowed to call .reverse.

PROBLEM 1 TESTS:

puts is_palindrome('hello') == false
puts is_palindrome('o') == true
puts is_palindrome('h') == true
puts is_palindrome('dog') == false
puts is_palindrome('mom') == true

"""

"""
PROBLEM 2:

Write a method called 'every_other' which takes a string and an integer n as arguments.
This method should return a new string containing every nth character of the original string.

For example, every_other('abcdef', 2) returns 'ace'

PROBLEM 2 TESTS:

puts every_other('abcdef', 2) == 'ace'
puts every_other('abcdef', 3) == 'ad'
puts every_other('ababababababab', 2) == 'aaaaaaa'
puts every_other('a', 2) == 'a'
puts every_other('ab', 2) == 'a'
puts every_other('a', 5) == 'a'
puts every_other('', 2) == ''
puts every_other('', 34444) == ''

"""

"""
PROBLEM 3:

Write a method called 'golden_ratio' which take a single integer as an argument.

This method is meant to approximate the golden_ratio = (1 + squareroot(2) / 2) to
a degree of accuracy that increases with the integer argument. It should return
an approximation for this number.

One way of approximating this number is realizing that the quotients of adjacent
terms in the famous Fibonacci sequence approach this number for large indices.

Recall that the Fibonacci sequence is a sequence of integers consisting of the sum of
the last 2 terms: 1, 1, 2, 3, 5, 8, 13, 21 ... and therefore 1/1, 2/1, 3/2, 5/3, 8/5, ...
given successively improved estimates for the golden ratio.

HINT: It makes sense to initiate things with the first and second terms equal to 1 and 1, respectively.

PROBLEM 3 TESTS:

puts ((golden_ratio(5) - ((1 + 5 ** 0.5) / 2)).abs < 0.1)
puts ((golden_ratio(10) - ((1 + 5 ** 0.5) / 2)).abs < 0.05)
puts ((golden_ratio(100) - ((1 + 5 ** 0.5) / 2)).abs < 0.0001)

"""

"""
PROBLEM 4:

Write a method 'common' that takes a string as an argument. It returns the most commonly
occurring 3 character group in the string (spaces count as characters, and only consider lowercase).

PROBLEM 4 TESTS:

puts common('riverrun, past eve and adams, from swerver of shore to bend of bay') == 'ver'
puts common('the') == 'the'
puts common('Stately, plump Buck Mulligan came from the stairhead, bearing a bowl of lather on which a mirror and a razor lay crossed.') == ' a '
"""
