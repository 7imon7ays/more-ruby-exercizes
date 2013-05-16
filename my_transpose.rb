def my_transpose(array)
  answer = Array.new

  array.each_index do |index|
    sub_answer = []
    array.each do |sub_array|
      sub_answer << sub_array[index]
    end
    answer << sub_answer
  end
  answer
end

p my_transpose([
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ])

