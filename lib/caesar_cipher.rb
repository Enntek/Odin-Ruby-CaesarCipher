# frozen_string_literal: true

# Odin Ruby Caesar Cipher Project
# https://www.theodinproject.com/lessons/ruby-caesar-cipher
# Use TDD to create this solution
class CaesarCipher
  def caesar_cipher(string, shift)
    array = string.split('')
    array.map do |char|
      if char.ord.between?(65, 90) || char.ord.between?(97, 122)
        base = char.ord.between?(65, 90) ? 65 : 97
        ((char.ord - base + shift) % 26 + base).chr
      else
        char
      end
    end.join
  end
end

cc = CaesarCipher.new
puts cc.caesar_cipher('z Z!', 1)
