# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
require "pry"

def is_palindrome(number)
   return false if number < 0
   return false if number == nil
   return true if number < 10
   



  until number < 10
    num = number
    length = 0

    while num >= 1
      num = num / 10
      length += 1
    end

    low_num = number % 10

    high_num = number / (10 **(length - 1))


    number = (number - low_num - (high_num * (10 ** (length - 1))))/10

    return false if low_num != high_num
  end
  return true



end

number = 8710178
is_palindrome(number)
