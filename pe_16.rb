
# 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# What is the sum of the digits of the number 21000?
require 'benchmark'
require 'bigdecimal/math'

puts Benchmark.measure {
  def to_the_thousand_sum(num)
      (num ** 1000).to_s.split("").map{|number| number.to_i }.inject(:+)
  end
  p to_the_thousand_sum(2) # 1366
}
# execution times may vary from computer to computer, but on my mac it took (  0.000290) seconds to execute.
