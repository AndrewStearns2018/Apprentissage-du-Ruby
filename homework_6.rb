def is_this_word_longer_than_x(array_of_words, integer)
  hash_of_words = {}
  array_of_words.each do |word|
    if word.length > integer
      hash_of_words[word] = word.length
    end
  end
  return hash_of_words
end

puts is_this_word_longer_than_x(["ce",
  "qui",
  "rend",
  "douleureuses",
  "de",
  "telles",
  "amours",
  "en",
  "effet",
  "c'est",
  "une",
  "espece",
  "de",
  "peche",
  "orginel",
  "de",
  "la",
  "femme"
  ], 4)

puts is_this_word_longer_than_x([
  "Dolly",
  "an",
  "only",
  "child",
  "born",
  "in",
  "Bras",
  "married",
  "at",
  "the",
  "tender",
  "and",
  "wayward",
  "age",
  "of",
  "fifteen",
  "General",
  "Ivan",
  "Durmanov",
  "Commander",
  "of",
  "Yukon",
  "Fortress",
  "and",
  "peaceful",
  "country",
  "gentleman"], 6)

def lire_des_fichiers(fichier_a_lire)
  IO.read(fichier_a_lire).to_s
  #I'm not sure if the to_s is needed or if its already a string
end

puts lire_des_fichiers("graveshomer.txt")

def tokenizer(string)
  token_hash = {}
  string.downcase.split.each do |word|
    if not token_hash.include?(word)
      token_hash[word] = 1
    else
      token_hash[word] += 1
    end
  end
  return token_hash
end

puts tokenizer(lire_des_fichiers("graveshomer.txt"))

def mots_le_plus_longs_du_texte(texte)
  hash_of_words_and_their_lengths = {}
  texte.downcase.split.each do |word|
    if not hash_of_words_and_their_lengths.include?(word)
      hash_of_words_and_their_lengths[word] = word.length
    end
  end
  longest_words = hash_of_words_and_their_lengths.values.max
  return hash_of_words_and_their_lengths.select {|k, v| v == longest_words}
  return hash_of_words_and_their_lengths
  #I'm not sure why it won't return the entire hash that I've made
end

puts mots_le_plus_longs_du_texte(lire_des_fichiers("graveshomer.txt"))

def deleting_noninteger_values(test_hash)
  test_hash = {}
  #test_hash.delete_if {|k, v| v != Integer}
  #return test_hash.select {|k, v| v == Integer}
  return test_hash
end

puts deleting_noninteger_values({"Le" => 3, "lapin" => 1.3, "mange" => 1})
#I'm not sure why this program doesn't work
