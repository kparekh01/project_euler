# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?


require 'benchmark'
require 'bigdecimal/math'
require 'prime' #module method finishes in (  0.020104) vs. my method (  0.336118)
                #obviously this can be refactored.

puts Benchmark.measure {
  prime_arr = [2,3]
  num = 4
  while prime_arr.length <= 10000
    if (2..Math.sqrt(num).to_i).any?{|multiple| num % multiple == 0}
      num += 1
    else
      prime_arr << num
      num += 1
    end
  end
p prime_arr.last#104743
  # primes = Prime.first(10001).each{|num| num}
  # p primes.last #104743 <-- fineshes in (  0.020104) seconds
}
# execution times may vary from computer to computer, but on my mac it took (  0.336118) seconds to execute.
