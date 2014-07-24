def numbers_in_words digits
  digit_hash = {0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight",
            9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen",
            15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen", 20 => "twenty",
            30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"}
  digit_string = digits.to_s
  if digits <= 20 || (digits <= 90 && digits % 10 == 0)
    solution = digit_hash.fetch(digits)
  elsif digits < 100
    solution = digit_hash.fetch((digit_string[0]+"0").to_i) + " " + digit_hash.fetch(digit_string[1].to_i)
  elsif digits < 1_000
    solution = digit_hash.fetch(digit_string[0].to_i) + " hundred " + numbers_in_words(digit_string[1..-1].to_i)
  elsif digits < 10_000
    solution = digit_hash.fetch(digit_string[0].to_i) + " thousand " + numbers_in_words(digit_string[1..-1].to_i)
  elsif digits < 100_000
    solution = numbers_in_words((digit_string[0..1]).to_i) + " thousand " + numbers_in_words(digit_string[2..-1].to_i)
  elsif digits < 1_000_000
    if(digit_string[1..2] == "00")
      thousand_var = "thousand "
      else
      thousand_var = ""
    end
    solution = digit_hash.fetch(digit_string[0].to_i) + " hundred " + thousand_var + numbers_in_words(digit_string[1..-1].to_i)
  elsif digits < 10_000_000
    solution = digit_hash.fetch(digit_string[0].to_i) + " million " + numbers_in_words(digit_string[1..-1].to_i)
  elsif digits < 100_000_000
    solution = numbers_in_words((digit_string[0..1]).to_i) + " million " + numbers_in_words(digit_string[2..-1].to_i)
  elsif digits < 1_000_000_000
    if(digit_string[1..2] == "00")
      million_var = "million "
      else
      million_var = ""
    end
    solution = digit_hash.fetch(digit_string[0].to_i) + " hundred " + million_var + numbers_in_words(digit_string[1..-1].to_i)
  elsif digits < 10_000_000_000
    solution = digit_hash.fetch(digit_string[0].to_i) + " billion " + numbers_in_words(digit_string[1..-1].to_i)
  elsif digits < 100_000_000_000
    solution = numbers_in_words((digit_string[0..1]).to_i) + " billion " + numbers_in_words(digit_string[2..-1].to_i)
  elsif digits < 1_000_000_000_000
    if(digit_string[1..2] == "00")
      billion_var = "billion "
      else
      billion_var = ""
    end
    solution = digit_hash.fetch(digit_string[0].to_i) + " hundred " + billion_var + numbers_in_words(digit_string[1..-1].to_i)
  end
  solution.strip
end
