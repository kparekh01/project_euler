require "prime" #requiring prime is neccessary prior to using the built in class
def greatest_prime_factor(number)
  Prime.prime_division(number).flat_map{|factor, power| [factor] * power}.max
end#by using [factor] * power it brings number to gether without actually * them!
#[2,2] will be [2] * 2 == 2,2 + other prime factors of the number.
#original output from Prime.prime_division(number)(see below) had to be manipulated
#as we are trying to find the greatest SINGLE prime factor of a number and in order
#to do that the results must be flat_mapped like above, so that .max can be used!
p greatest_prime_factor(12) #[3]  is the result you get because of flat mapping
p Prime.prime_division(12)#[[2, 2], [3, 1]] original output you get by using
p Prime.prime_division(12).max #[3, 1] output you get by using max on original output