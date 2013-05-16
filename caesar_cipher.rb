def caesar_cipher(str, shift)
  answer = ""
  str.each_byte do |num|
    answer += (97 + (num + shift) % 97).chr
  end
  answer
end

p caesar_cipher("how", 1)
p caesar_cipher("hello", 3)