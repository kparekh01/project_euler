=begin
The four adjacent digits in the 1000-digit number that have the greatest product are 9 × 9 × 8 × 9 = 5832.

73167176531330624919225119674426574742355349194934
96983520312774506326239578318016984801869478851843
85861560789112949495459501737958331952853208805511
12540698747158523863050715693290963295227443043557
66896648950445244523161731856403098711121722383113
62229893423380308135336276614282806444486645238749
30358907296290491560440772390713810515859307960866
70172427121883998797908792274921901699720888093776
65727333001053367881220235421809751254540594752243
52584907711670556013604839586446706324415722155397
53697817977846174064955149290862569321978468622482
83972241375657056057490261407972968652414535100474
82166370484403199890008895243450658541227588666881
16427171479924442928230863465674813919123162824586
17866458359124566529476545682848912883142607690042
24219022671055626321111109370544217506941658960408
07198403850962455444362981230987879927244284909188
84580156166097919133875499200524063689912560717606
05886116467109405077541002256983155200055935729725
71636269561882670428252483600823257530420752963450
Find the thirteen adjacent digits in the 1000-digit number that have the greatest product. What is the value of this product?
=end
require 'benchmark'
require 'bigdecimal/math'

puts Benchmark.measure {

  thousand_digit_number = %w[73167176531330624919225119674426574742355349194934
  96983520312774506326239578318016984801869478851843
  85861560789112949495459501737958331952853208805511
  12540698747158523863050715693290963295227443043557
  66896648950445244523161731856403098711121722383113
  62229893423380308135336276614282806444486645238749
  30358907296290491560440772390713810515859307960866
  70172427121883998797908792274921901699720888093776
  65727333001053367881220235421809751254540594752243
  52584907711670556013604839586446706324415722155397
  53697817977846174064955149290862569321978468622482
  83972241375657056057490261407972968652414535100474
  82166370484403199890008895243450658541227588666881
  16427171479924442928230863465674813919123162824586
  17866458359124566529476545682848912883142607690042
  24219022671055626321111109370544217506941658960408
  07198403850962455444362981230987879927244284909188
  84580156166097919133875499200524063689912560717606
  05886116467109405077541002256983155200055935729725
  71636269561882670428252483600823257530420752963450]
  number = []
  thousand_digit_number.join.split("").each{|num| number << num.to_i}

  array_of_thirteen = [] #holds all combinations of adjacent 13 digits
  product = [] #holds each array__of_thirteen multiplied
  i = 0
  while i < (number.length - 13)
    each_thirteen = number[i..(i+12)].to_a
    array_of_thirteen << each_thirteen
    product << each_thirteen.inject(:*)
    i += 1
  end
  result_array = []
  array_of_thirteen.each { |array|  result_array << array if array.inject(:*) == product.max}

  puts "The 13 adjacent numbers that have the highest product are #{result_array}, and they multiply to #{product.max}"
  #The 13 adjacent numbers that have the highest product are [[5, 5, 7, 6, 6, 8, 9, 6, 6, 4, 8, 9, 5]], and they multiply to 23514624000
}
# execution times may vary from computer to computer, but on my mac it took (  0.061358) seconds to execute.
