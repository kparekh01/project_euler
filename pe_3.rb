# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
require 'benchmark'
require 'bigdecimal/math'
require "prime"
puts Benchmark.measure {
#first.max will give you the array with the highest pair of prime factors.
#sceond.max will extract the highest prime factor
#p Prime.prime_division(600851475143).max.max #benchmarks at about (  0.000290)

num = 600851475143
largest_prime_factor = 0
multiple = 2

while (num > 1)
  if (num % multiple == 0)
    num = (num / multiple)
    largest_prime_factor = multiple
  else
    multiple += 1
  end
end
p largest_prime_factor # 6857 benchmarks at (  0.000429) almost 2 times the module
}
