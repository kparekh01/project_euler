=begin
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
=end
require 'benchmark'
require 'bigdecimal/math'
require 'prime' #module method finishes in (  0.020104) vs. my method ( 18.564579)
                #obviously this can be refactored.

puts Benchmark.measure {
  num = 4
  sum = 5
  while num < 2000000
    if !(2..Math.sqrt(num).to_i).any?{|multiple| num % multiple == 0}
      sum += num
      num += 1
    else
      num += 1
    end
  end
p sum
  # primes = Prime.first(10001).each{|num| num}
  # p primes.last #104743 <-- fineshes in (  0.020104) seconds
}
# execution times may vary from computer to computer, but on my mac it took ( 18.564579) seconds to execute.
