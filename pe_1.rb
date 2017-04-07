
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
#The sum of these multiples is 23.  Find the sum of all the multiples of 3 or 5 below 1000.

require 'benchmark'
require 'bigdecimal/math'

puts Benchmark.measure {
  p (1...1000).map{|num|  num if (num % 3 == 0) || (num % 5 == 0)}.compact.inject(:+)
  #compact removes all the nils from the array, and inject(:+) will total the array
  #233168
}
# execution times may vary from computer to computer, but on my mac it took (  0.000438) seconds to execute.
