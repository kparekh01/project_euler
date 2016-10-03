map_nums = (100..999).map{|num| num} #[100,101,102...999]

#(p product.length = 720,000 total product combinations)********
product = [] #stores the products of the number(100) * the entire map_nums array
(100..999).each do |number|#and does that for each number and stores in product
  i = 100
  while i <  map_nums.length
    product << number * map_nums[i]#(100*100, 100*101..100 * 999, then 101 * 100)
    i += 1
  end
end

largest_palindrome_product = []
product.each do |each_total| #take each product and turn it to a string
  if each_total.to_s == each_total.to_s.reverse # string == string.reverse
    largest_palindrome_product << each_total.to_i #send to largerst_p_p as intiger
  end
end

p largest_palindrome_product.max #this ia a list of palindrones and returns the max!
#906609 is the largest_palindrome of any 2(3digit numbers) being multipled.
