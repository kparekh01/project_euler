# Euler discovered the remarkable quadratic formula:
#
# n2+n+41n2+n+41
# It turns out that the formula will produce 40 primes for the
# consecutive integer values 0≤n≤390≤n≤39. However, when n=40,402+40+41=40(40+1)+41n=40,402+40+41=40(40+1)+41
# is divisible by 41, and certainly when n=41,412+41+41n=41,412+41+41 is clearly divisible by 41.
#
# The incredible formula n2−79n+1601n2−79n+1601 was discovered, which produces 80 primes
# for the consecutive values 0≤n≤790≤n≤79. The product of the coefficients, −79 and 1601, is −126479.
#
# Considering quadratics of the form:
#
# n2+an+bn2+an+b, where |a|<1000|a|<1000 and |b|≤1000|b|≤1000
#
# where |n||n| is the modulus/absolute value of nn
# e.g. |11|=11|11|=11 and |−4|=4|−4|=4
# Find the product of the coefficients, aa and bb, for the quadratic expression that
# produces the maximum number of primes for consecutive values of nn, starting with n=0n=0.


require 'benchmark'
require 'bigdecimal/math'

puts Benchmark.measure {
  def is_prime?(number)
    number > 1 && !(2..Math.sqrt(number)).any? { |i| number % i == 0 }
  end

  max = 0
  max_a = 0
  max_b = 0
  (-999..999).to_a.each do |a|
    (2..999).to_a.each do |b|
      number = 0
      while is_prime?((number ** 2) + (a * number) + b)
        number += 1
      end
      if number > max
        max_a = a
        max_b = b
        max = number
      end
    end
  end
  p max_a * max_b #-59231
}
# execution times may vary from computer to computer, but on my mac it took (  4.544785) seconds to execute.