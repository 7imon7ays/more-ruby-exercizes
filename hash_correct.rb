def hash_correct(hash)
  answer = {}
  placeholder = hash.map do |key, value|
    new_byte = (key.to_s[0].ord + 1) % 97 + 97
    new_key = new_byte.chr.to_sym
    answer[new_key] = value
  end
  answer
end

wrong_hash = { :a => "banana", :b => "cabbage", :c => "dental_floss", :d => "eel_sushi" }
p hash_correct(wrong_hash)