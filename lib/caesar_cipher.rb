# Odin Ruby Caesar Cipher Project
# https://www.theodinproject.com/lessons/ruby-caesar-cipher

def caesar_cipher(string, shift)
  encrypted_string = string.split('').map do |char|
    if char.match(/[a-zA-Z]/)
      base = char.ord.between?(65, 90) ? 65 : 97
      ord = ((char.ord - base + shift) % 26) + base
      ord.chr
    else
      char
    end
  end
  encrypted_string.join
end


p caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"
