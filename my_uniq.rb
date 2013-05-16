def my_uniq(array)
  answer = []
  array.each do |element|
    answer << element unless answer.include?(element)
  end
  answer
end

puts my_uniq([1,1,2,2,3,4,5,5])