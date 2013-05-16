def two_sum(array)
  pairs = []
  array.each do |first_compare|
    array.each do |second_compare|
      a_pair = [first_compare, second_compare].sort
      pairs << a_pair if a_pair.inject(:+) == 0 && !pairs.include?(a_pair.sort)
    end
  end
  pairs
end

p two_sum([1,1,1,1,1,1,1])
p two_sum([1,-1,6,-6])
