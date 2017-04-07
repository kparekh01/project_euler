# A perfect number is a number for which the sum of its proper divisors is exactly equal to the number.
# For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28,
# which means that 28 is a perfect number.
# A number n is called deficient if the sum of its proper divisors is
# less than n and it is called abundant if this sum exceeds n.
# As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16,
# the smallest number that can be written as the sum of two abundant numbers is 24.
# By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the
# sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even
# though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is
# less than this limit.
# Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers


require 'benchmark'
require 'bigdecimal/math'

puts Benchmark.measure {
  def factors_sum(num)
    sum_of_factors = 0
  	root = Math.sqrt(num).to_i
  	(1..root).to_a.each do |i|
  		(sum_of_factors += i + num/i) if num % i == 0
  	end
  	sum_of_factors -= root if num == root ** 2
  	sum_of_factors - num
  end

  def abundant?(num)
  	num < factors_sum(num)
  end

  abundant_arr = []
  max = 28123
  (2..max).to_a.each do |num|
  	abundant_arr << num if abundant?(num)
  end

  values = Array.new(max + 1, true)
  abundant_arr.each_with_index do |outer_num, index|
  	index.upto (abundant_arr.length - 1) do |inner_num|
  		values[outer_num + abundant_arr[inner_num]] = false if (outer_num + inner_num) <= 28123
  	end
  end

  sum = 0
  values.each_with_index do |value, abundant_total|
  	sum += abundant_total if value
  end

  p sum #4179871
}
# execution times may vary from computer to computer, but on my mac it took (  3.108014) seconds to execute.
