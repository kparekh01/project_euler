def fib(number)
  vals = [1, 2]
  number.times do
    vals << (vals[-1]+vals[-2]) # add (1 + 2) = 3 then << 3 in to vals making it [2,3]
  end# then add that (2+3) = 5 and push that in to vals making it [3,5] etc...
  vals
end
blank = []# out of 100 fb. numbers, all even #'s < than 4,000,000 are <<'d into blank
fib(100).each{|x| blank << x if x % 2 == 0 && x < 4000000}
puts blank.inject(:+)#then eveything in blank is added for the final result.
p fib(8)# will give you the first 10 fibonacci numbers in a sequence as 1,2 are
#fixed and counted as the first 2! the (8) starts after the 1 and 2.
#This was the solution for the sum of all even fibonacci numbers that were less than
#4,000,000!