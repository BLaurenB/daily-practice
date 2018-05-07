=begin
In this kata, you must create a digital root function.

A digital root is the recursive sum of all the digits in a number. Given n, take the sum of the digits of n. If that value has two digits, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.

Ex: digital_root(132189)
=> 1 + 3 + 2 + 1 + 8 + 9
=> 24 ...
=> 2 + 4
=> 6

=end

# My solution
def digital_root(n)
  summed = 10
  while summed.to_s.length > 1
    summed = n.to_s.split('').map {|num| num.to_i}.sum
    n = summed
  end
  return summed
end

# Refactored after seeing other solutions:
# def digital_root(n)
#   while n.to_s.length > 1
#     n = n.to_s.split('').map {|num| num.to_i}.sum
#   end
#   return n
# end


# def digital_root(n)
#   n = n.to_s.split('').map {|num| num.to_i}.sum while n.to_s.length > 1
#   return n
# end

puts digital_root(123)
puts digital_root(123456)
puts digital_root(1234561122)
