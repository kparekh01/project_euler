# Damn do none of y'all know number theory? There's so many convoluted substring solutions.
#
# 1/3 = 3/9 = 0.(3)
# 1/7 = 148257/999999 = 0.(148257)
#
# Therefore, the length of the repeating portion is length of the numerator when you set the
# denominator equal to some string of 9s.
# There's one other thing to keep in mind, which is that 1/5 and 1/2 have terminating decimals,
# as 5 and 2 are the only divisors of 10. So, for example, 1/6 = 1/3 * 1/2, and it's clear that the
# length of the repeating decimal is the length of the repeating decimal of 1/3. And if the prime factors
# of the denominator are only composed of 2's and 5's, the denominator is terminating.
# Here's my solution:

def is_prime?(number)
  number > 1 && !(2..Math.sqrt(number)).any? { |i| number % i == 0 }
end

#Couldn't quite convert this math formula based on nuber theory  in to an algo sucessfully.
#Will circle back around to it.
