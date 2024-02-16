# frozen_string_literal: true

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(str, dictionary)
  hash = Hash.new(0)
  # splits the string into words
  words = str.downcase.split(/\W+/)
  words.each do |word|
    dictionary.each do |dict_word|
      hash[dict_word] += 1 if word.include?(dict_word)
    end
  end
  hash
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
puts substrings('below', dictionary)
