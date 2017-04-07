# Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:
#
# 1634 = 14 + 64 + 34 + 44
# 8208 = 84 + 24 + 04 + 84
# 9474 = 94 + 44 + 74 + 44
# As 1 = 14 is not a sum it is not included.
#
# The sum of these numbers is 1634 + 8208 + 9474 = 19316.
#
# Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

require 'benchmark'
require 'bigdecimal/math'

puts Benchmark.measure {
  total = 0
  (2..500000).to_a.each do |num|
    total += num if (num.to_s.split("").map{|num| num.to_i ** 5}.inject(:+) == num)
  end
  p total #443839
}
# execution times may vary from computer to computer, but on my mac it took (  4.163602) seconds to execute.
