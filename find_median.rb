def find_median(array)
  if array.empty?
    nil
  elsif array.length.odd?
    sorted_array = array.sort
    middle_index = (sorted_array.length + 1) / 2
    sorted_array[middle_index-1]
  else
    sorted_array = array.sort
    middle_index = sorted_array.length / 2
    (sorted_array[middle_index] + sorted_array[middle_index - 1]) / 2.0
  end
end
