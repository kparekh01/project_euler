require 'prime'
primes = Prime.first(10001).each{|num| num}
p primes.last