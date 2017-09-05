def reversing_arrays(initial_array)
  reversed_array = []
  index = initial_array.length - 1
  while index > - 1
    reversed_array.push (initial_array[index])
    index -= 1
  end
  return reversed_array
end
puts reversing_arrays([1, 2, 3, 4, 5])

def finding_the_mode(array)
  new_hash = {}
  array.each do |member|
    if not new_hash.include?(member)
      new_hash[member] = 1
    else
      new_hash[member] += 1
    end
  end
  return new_hash.key(new_hash.values.max)
end


puts finding_the_mode(["a", "b", "c", "a"])
