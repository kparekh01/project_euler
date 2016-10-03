=begin
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a2 + b2 = c2
For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
numbers = 0
 1.upto(1000) { |a|
  (a+1).upto(1000) { |b|
    c = 1000 - a - b
    if (a*a + b*b == c*c)
       numbers = a, b, c
       break
    end
  }
}
 p numbers
=end
result = 0
a = 1
while a < 1000
  b = 2
  while b < 1000
    c = 1000 - a - b
    if a**2 + b**2 == c**2 && a + b + c == 1000
      result = a,b,c
    end
    b += 1
  end
  a += 1
end
p "The three numbers of the pythagoren triplet are #{result.sort.to_s} and the product is #{result.inject(:*)}"