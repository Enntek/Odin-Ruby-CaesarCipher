# frozen_string_literal: true

# Odin Ruby Caesar Cipher Project
# https://www.theodinproject.com/lessons/ruby-caesar-cipher
# Use TDD to create this solution
class CaesarCipher
  def caesar_cipher(string, shift)
    # a 97
    # z 122
    # puts string.ord + shift 
    # string.ord - 97 # this would represent letter, 1 - 26
    # add our shift to that, then use mod operand
    # then add back 97

    # check if character is letter
    # 


    array = string.split('')

    array.map do |char|
      if char.alpha?
        (char.ord - 97 + shift) % 26 + 97
      else
        char
      end
    end
    
    # shifted_array = array.map { |char| (char.ord - 97 + shift) % 26 + 97 }
    # shifted_array.map(&:chr).join

  end

  def alpha?(char)
    return true if char.ord.between?(97, 122)

    false
  end
end

require 'pry-byebug'
binding.pry
cc = CaesarCipher.new
puts cc.caesar_cipher('az', 1)
