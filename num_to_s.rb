def recursion(number, base, answer_array = [])

  if number == 0
    return answer_array
  else
   answer_array.unshift(number % base)
   number = number / base
   recursion(number, base, answer_array)
  end
end


def num_to_s(num, base)
  num_hash = {
    1 => '1',
    2 => '2',
    3 => '3',
    4 => '4',
    5 => '5',
    6 => '6',
    7 => '7',
    8 => '8',
    9 => '9',
    0 => '0'
  }

  result = recursion(num,base)
  string = result.map {|number| num_hash[number]}.join("")
end

p num_to_s(8,2)
#
#
#
#   my_string =  ""
#   # num = 10, base = 3
#   my_string += num % base
#   # my_string = 1, num = 10, base = 3
#   quotient = num / base
#   # quotient = 3, base = 3
#   my_string += quotient % base
#   # my_string = 10, base = 3
#   quotient = quotient / base
#   # quotient = 1, base = 3
#   my_string += quotient % base
#   # my_string = 101
#   quotient = quotient / base
#   # quotient = 0