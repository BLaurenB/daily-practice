"""
In this kata, you must create a digital root function.

A digital root is the recursive sum of all the digits in a number. Given n, take the sum of the digits of n. If that value has two digits, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.

Ex: digital_root(132189)
=> 1 + 3 + 2 + 1 + 8 + 9
=> 24 ...
=> 2 + 4
=> 6

"""

# My solution
def digital_root(n):
  while (len(str(n)) > 1):
    n = sum([int(num) for num in str(n)])
  return n



print(digital_root(123))
print(digital_root(123456))
print(digital_root(1234561122))
