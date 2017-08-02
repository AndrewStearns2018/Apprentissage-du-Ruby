def adding_numbers_before_n(n)
  arr =[]
  a = 0
  current_sum = 0
  while a < n
    arr.push(a)
    a += 1
  end
  arr.each do |member|
    current_sum += member
  end

  return current_sum
end

def factorial(n)
  if n == 0
    return 1
  else
    factorial_array = (1..n).to_a #to array
    current_product = 1
    factorial_array.each do |factor_of_factorial|
    #*= is the same at here
      current_product = current_product * factor_of_factorial
    end

    return current_product
  end
end



puts "Type in an integer, and we will sum the positive integers before it."
puts factorial(adding_numbers_before_n(gets.to_i))
