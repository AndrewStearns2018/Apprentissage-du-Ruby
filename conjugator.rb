
def verb_type(infinitive)
  return infinitive[(infinitive.length - 2)..infinitive.length]
end

def conjugate(infinitive, person, number)
  new_verb_type = verb_type(infinitive)
  if new_verb_type == 'ir'
    stem = infinitive[0..(infinitive.length - 2)]
    if person == 1
      if number == 1
        stem += 's'
      else
        return stem += 'ssons'
      end

    elsif person == 2
      if number == 1
        stem += 's'
      else
        stem += 'ssez'
      end

    elsif person == 3
      if number == 1
        stem += 't'
      else
        stem += 'ssent'
      end
    end

  elsif new_verb_type == 'er'
    stem = infinitive[0..(infinitive.length - 3)]
    if person == 1
      if number == 1
        stem += 'e'
      else
        stem += 'ons'
      end

    elsif person == 2
      if number == 1
        stem += 'es'
      else
        stem += 'ez'
      end

    elsif person == 3
      if number == 1
        stem += 'e'
      else
        stem += 'ent'
      end
    end
  end

  return stem
end

puts conjugate('choisir', 1, 2)
