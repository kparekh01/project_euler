# A palindromic number reads the same both ways. The largest palindrome made from the
# product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
require 'benchmark'
require 'bigdecimal/math'

puts Benchmark.measure {

  def recursive_palindrome(num_1 = 999, num_2 = 900, product = [])
    if product.length >= 1
      return product.max
    elsif num_2 <= 100
      return "No palindrome product in your range!"
    else
      product = []
      map_nums = (num_2..num_1).to_a
      map_nums.each do |lower|
        map_nums.reverse.each do |higher|
          str_product = (lower * higher).to_s
          product << str_product.to_i if str_product == str_product.reverse
        end
      end
      num_1 -= 100
      num_2 -= 100
      recursive_palindrome(num_1, num_2, product)
    end
  end

  p recursive_palindrome #906609 --> done in (  0.006016) <--obviously quicker because in this case
                         #the method does not get called recursively, but is factored to do so if condition not met.

  #Original method before refactoring it.
  # map_nums = (100..999).to_a
  # product = []
  # (100..999).each do |number|
  #   i = 100
  #   while i <  map_nums.length
  #     str_product = (number * map_nums[i]).to_s
  #     product << str_product.to_i if str_product == str_product.reverse
  #     i += 1
  #   end
  # end
  # p product.max #(  0.252234) to execute
}
