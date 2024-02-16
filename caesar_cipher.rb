# frozen_string_literal: true

def caesar_cipher(string, shift)
  alphabet = ('a'..'z').to_a
  output = ''

  string.split('').each do |char|
    if !alphabet.include?(char.downcase)
      output += char
    else
      capital_letter = true if char.upcase == char

      char_index = alphabet.find_index(char.downcase)
      new_index = char_index.to_i + shift
      new_index -= alphabet.length if new_index > 25

      new_char = alphabet[new_index]
      new_char = new_char.upcase if capital_letter
      output += new_char
    end
  end

  puts output
end

caesar_cipher('What a string!', 5)
