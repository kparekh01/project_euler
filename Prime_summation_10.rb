=begin
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
=end
require "prime"
results = []
Prime.each(2000000){|prime| results << prime if prime < 2000000}
p results.inject(:+)