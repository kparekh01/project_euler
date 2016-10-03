require "prime"
def triangle_num(num)
  (1..num).to_a.inject(:+)
end
beginning_time = Time.now
i = 2
while i < 1000000
    if Prime.prime_division(triangle_num(i)).inject(:+).map.each_with_index{|val, index| val + 1 if index.odd? == true}.compact.inject(:*) >= 500
       p triangle_num(i)
       break
    end
i += 1
end
end_time = Time.now
puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"

#while loop will take the Prime.prime_division of the triangular number of i ([prime, exp]), add 1 to the exponents(odd index), and multiply them(total factors)
#if the factors for that number come out to be over 500 print that triangular number, and break the loop.
#comeback to see if code can be optimized to run faster.
