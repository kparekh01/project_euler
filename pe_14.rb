# The following iterative sequence is defined for the set of positive integers:
#
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate the following sequence:
#
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms.
#Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?
#
# Once the chain starts the terms are allowed to go above one million.

require 'benchmark'
require 'bigdecimal/math'
#previous method wastaking me ( 20.446368), refactored down to ( 10.235253).  Will look in to refactoring futher.
puts Benchmark.measure {
  def l_c_s(num)
  length = 1
    while (num > 1)
      num.even? ? num = num/2 : num = 3 * num + 1
      length += 1
    end
    length
  end
  num = 13
  max_chain_num = 0
  max_chain = 0
  while num <= 1000000
    current_chain = l_c_s(num)
    if current_chain > max_chain
      max_chain = current_chain
      max_chain_num = num
    end
    num +=1
  end
  puts max_chain_num
}
# execution times may vary from computer to computer, but on my mac it took ( 10.235253) seconds to execute.
