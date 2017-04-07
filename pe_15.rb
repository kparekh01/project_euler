
require 'benchmark'
require 'bigdecimal/math'

puts Benchmark.measure {
  #applied the pacal's triangle formula.
  def combinations(grid_length, grid_width)
      total = grid_length.to_i + grid_width.to_i
      (total).downto((total - grid_width.to_i) + 1).inject(:*) / grid_width.to_i.downto(1).inject(:*)
  end
  p combinations(20, 20)  #137846528820
}
# execution times may vary from computer to computer, but on my mac it took (  0.000438) seconds to execute.
