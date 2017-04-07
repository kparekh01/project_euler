# Starting with the number 1 and moving to the right in a clockwise direction a 5 by 5 spiral is formed as follows:
#
# 21 22 23 24 25
# 20  7  8  9 10
# 19  6  1  2 11
# 18  5  4  3 12
# 17 16 15 14 13
#
# It can be verified that the sum of the numbers on the diagonals is 101.
#
# What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?

require 'benchmark'
require 'bigdecimal/math'

puts Benchmark.measure {
  i = 1
  sum = i
  step = 2
  while i < 1001 ** 2
    4.times do
      sum += i += step
    end
    step += 2
  end
  puts sum
}
# execution times may vary from computer to computer, but on my mac it took (  0.000438) seconds to execute.
