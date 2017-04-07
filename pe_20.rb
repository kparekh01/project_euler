# n! means n × (n − 1) × ... × 3 × 2 × 1
#
# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#
# Find the sum of the digits in the number 100!

require 'benchmark'
require 'bigdecimal/math'

puts Benchmark.measure {
  def factorial(n)
    if n < 0
    return nil
    end
    i = 1
    while n > 0
    i = i * n
      n -= 1
    end
  return i
  end
  p factorial(100).to_s.split("").map{|str_num| str_num.to_i}.inject(:+)
}
# execution times may vary from computer to computer, but on my mac it took (  0.027906) seconds to execute.
