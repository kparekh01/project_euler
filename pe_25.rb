# The Fibonacci sequence is defined by the recurrence relation:
#
# Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
# Hence the first 12 terms will be:
#
# F1 = 1
# F2 = 1
# F3 = 2
# F4 = 3
# F5 = 5
# F6 = 8
# F7 = 13
# F8 = 21
# F9 = 34
# F10 = 55
# F11 = 89
# F12 = 144
# The 12th term, F12, is the first term to contain three digits.
#
# What is the index of the first term in the Fibonacci sequence to contain 1000 digits?

require 'benchmark'
require 'bigdecimal/math'

puts Benchmark.measure {
  def recursive_fibonacci(num1 = 1, num2 = 1, counter = 0)
    if num1.to_s.split("").length == 1000
      return counter
    else
      counter += 2
      num1 = num1 + num2
      num2 = num2 + num1
      recursive_fibonacci(num1, num2, counter)
    end
  end
  p recursive_fibonacci #4782
}
# execution times may vary from computer to computer, but on my mac it took (  0.549214) seconds to execute.
