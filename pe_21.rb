# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called
# amicable numbers.
#
# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284.
#The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
#
# Evaluate the sum of all the amicable numbers under 10000.

require 'benchmark'
require 'bigdecimal/math'

puts Benchmark.measure {
  def factors_sum(num)
    sum_of_factors = 1
    (2..Math.sqrt(num)).each do |i|
      (sum_of_factors += num / i + i) if num % i == 0
    end
    sum_of_factors
  end

  sum_of_amicable_pairs = 0
  (1..10000).each do |a|
    b = factors_sum(a)
    sum_of_amicable_pairs += a if (a != b && factors_sum(b) == a)
  end
  p sum_of_amicable_pairs #31626
}# execution times may vary from computer to computer, but on my mac it took (  0.199051) seconds to execute.
