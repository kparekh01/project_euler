=begin
The sum of the squares of the first ten natural numbers is,
1^2 + 2^2 + ... + 10^2 = 385

The square of the sum of the first ten natural numbers is,
(1 + 2 + ... + 10)^2 = 55^2 = 3025

Hence the difference between the sum of the squares of the first
ten natural numbers and the square of the sum is 3025 − 385 = 2640.

    Find the difference between the sum of the squares of the first one hundred
natural numbers and the square of the sum.
=end
require 'benchmark'
require 'bigdecimal/math'

puts Benchmark.measure {
  square_of_sum = 0
  sum_of_squares = 0
  (1..100).each do |num|
    sum_of_squares += (num ** 2)
    square_of_sum += num
  end
p (square_of_sum ** 2) - sum_of_squares #25164150
}
# execution times may vary from computer to computer, but on my mac it took (  0.000071) seconds to execute.
