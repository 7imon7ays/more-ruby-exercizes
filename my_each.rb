class Array
  def my_each
    for element in self
      yield element
    end
    self
  end
end

array = [1,2,3]
array.my_each {|x| puts x * 2}
puts array