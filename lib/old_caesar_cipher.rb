# Odin Ruby Caesar Cipher Project
# https://www.theodinproject.com/lessons/ruby-caesar-cipher

def caesar_encrypt(string, shift) 
  
  shift %= 26
  
  lowercase_array = ("a".."z").to_a
  lowercase_hash = {}
  uppercase_hash = {}

  lowercase_array.each_with_index do |letter, index|
    lowercase_hash[letter.to_sym] = index
    uppercase_hash[letter.upcase.to_sym] = index + 100
  end

  # convert string to array
  string_arr = string.split("")
  
  # find corresponding number given a char, return array of codes (including shift)
  arr_of_codes = string_arr.collect do |char|

    if lowercase_hash.include?(char.to_sym)
      code = lowercase_hash[char.to_sym] + shift
      code %= 26
      code

    elsif uppercase_hash.include?(char.to_sym)
      code = uppercase_hash[char.to_sym] + shift
      # to remove digit at hundreds with modulus 100, only tens' position remains
      # then wrap it with modulus 26, any values over 26 (letter z) will wrap
      # add 100 back to correspond to upcase codes
      code %= 100
      code %= 26
      code += 100
      code

    else
      char
    end

  end
   
  # find code => char, return array of encrypted chars
  arr_of_encrypted_letters = arr_of_codes.collect do |code|
    if lowercase_hash.has_value?(code)
      lowercase_hash.key(code).to_s # use .key to find corresponding letter for given code
    elsif uppercase_hash.has_value?(code)
      uppercase_hash.key(code)
    else
      code # return non-letters as is
    end
  end

  arr_of_encrypted_letters.join
end


p caesar_encrypt("Hello World!", 1)
# p Hash.instance_method(:value?) == Hash.instance_method(:has_value?) # check if 2 methods are aliases & identical
















# "a".ord # 97
# "z".ord # 122
# "A".ord #65
# "Z".ord #90

def caesar_cipher(word, shift=5)


  shift = shift % 26

  def lowercase_ord_wrap(num)
    if num > 122
      num = (num % 122) + 96
    end
    num
  end

  def uppercase_ord_wrap(num)
    if num > 90
      num = (num % 90) + 64
    end
    num
  end

  def is_letter(char_ord)
    if (char_ord >= 97 && char_ord <= 122) || (char_ord >= 65 && char_ord <= 90 )
      true
    else
      false
    end
  end




  array = word.split("")

  for i in 0..array.length - 1

    if is_letter(array[i].ord)
      current_ord = array[i].ord
      new_ord = current_ord + shift

      new_ord >= 97 ? new_ord = lowercase_ord_wrap(new_ord) : new_ord = uppercase_ord_wrap(new_ord)
      
      shifted_letter = new_ord.chr(Encoding::UTF_8)
      array[i] = shifted_letter
    end
  end

  array.join

end

#aracter given their integer ordinal (.ord method)
# 97.chr(Encoding::UTF_8)

