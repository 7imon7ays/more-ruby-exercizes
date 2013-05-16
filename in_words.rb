class Fixnum
  ONES = %w{#{nil} one two three four five six seven eight nine}
  TEENS = %w{ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen}
  TENS = %w{ten twenty thirty forty fifty sixty seventy eighty ninety}

  def translate(number, str="", last = false)
    return str if number == 0
    if number / 100 > 0
      remainder = number % 100
      number /= 100
      str += " " + ONES[number] + " hundred"
    elsif number.between?(10, 19)
      if last
        str += " and " + TEENS[number - 10]
      else
        str += " " + TEENS[number - 10]
      end
      return str
    elsif number / 10 > 0
      remainder = number % 10
      number /= 10
      if last
        str += " and " + TENS[number - 1]
      else
        str += " " + TENS[number - 1]
      end
    else
      str += " " + ONES[number]
      remainder = 0
    end
    translate(remainder, str, true)
  end


  def in_words(str="")
    now_writing = self
    return "zero" if now_writing == 0
    if now_writing / 1_000_000_000_000 > 0
      to_write = now_writing % 1_000_000_000_000
      now_writing /= 1_000_000_000_000
      str += translate(now_writing) + ' trillion'
    elsif now_writing / 1_000_000_000 > 0
      to_write = now_writing % 1_000_000_000
      now_writing /= 1_000_000_000
      str += translate(now_writing) + ' billion'
    elsif now_writing / 1_000_000 > 0
      to_write = now_writing % 1_000_000
      now_writing /= 1_000_000
      str += translate(now_writing) + ' million'
    elsif now_writing / 1000 > 0
      to_write = now_writing % 1000
      now_writing /= 1000
      str += translate(now_writing) + ' thousand'
    else
      str += translate(now_writing)
      return str[1..-1]
    end
    return str[1..-1] if to_write == 0
    to_write.in_words(str)
  end

end

p 1_311_511_567_432.in_words
p 1_324_232_544.in_words
p 1_311_511.in_words
p 11.in_words
p 33.in_words
p 20.in_words