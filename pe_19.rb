
require 'benchmark'
require 'bigdecimal/math'
require 'date'

puts Benchmark.measure {
  puts Date.new(1901,1,1).upto(Date.new(2000,12,31)).find_all { |d| d.mday == 1 && d.wday == 0 }.count #171
}
# execution times may vary from computer to computer, but on my mac it took (  0.027906) seconds to execute.
