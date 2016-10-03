blank = []
(1..999).each{|x| blank << x if x % 3 == 0 || x % 5 == 0}
puts blank.inject(:+)

#This code represents the sum of all multiples of 3 OR 5 that are less than a 1,000 == 233,168

