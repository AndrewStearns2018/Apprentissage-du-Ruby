
def verb_type(infinitive)
  ending = infinitive[(infinitive.length - 2)..infinitive.length]
  if ending == 'ir'
    return 'ir'
  elsif ending == 'er'
    return 'er'
  end
end

def conjugate(infinitive, person, number)
  if verb_type(infinitive) == 'ir'
    stem = infinitive[0..(infinitive.length - 2)]
    if person == 1
      if number == 1
        return stem + 's'
      else
        return stem + 'ssons'
      end
    elsif person == 2
      if number == 1
        return stem + 's'
      else
        return stem + 'ssez'
      end
    elsif person == 3
      if number == 1
        return stem + 't'
      else
        return stem + 'ssent'
      end
    end

  elsif verb_type(infinitive) == 'er'
    stem = infinitive[0..(infinitive.length - 3)]
    if person == 1
      if number == 1
        return stem + 'e'
      else
        return stem + 'ons'
      end

    elsif person == 2
      if number == 1
        return stem + 'es'
      else
        return stem + 'ez'
      end

    elsif person == 3
      if number == 1
        return stem + 'e'
      else
        return stem 'ent'
      end
    end
  end
end

puts conjugate('finir', 2, 1)
