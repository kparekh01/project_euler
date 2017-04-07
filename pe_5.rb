# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

require 'benchmark'
require 'bigdecimal/math'
#can probably be refactored better, but couldn't wrap my head around it. currently taking 8 seconds
puts Benchmark.measure {
  def divided_by?(n)
    (1..20).all?{ |each_num| n % each_num == 0 }
  end

  n = 2520           #set number to the current smallest multiple of 1 through 10 inclusive.
  loop do            #start my loop
    if divided_by?(n)#if a number in this loop makes this statement TRUE
      puts n         #print that number ot the screen (232792560)
      break          #and BREAK(stop) the loop.
    else
      n += 20        #otherwise increase that number by an increment of 20
    end              #and send it back through the loop until the if becomes true.
  end
  end_time = Time.now
}
# execution times may vary from computer to computer, but on my mac it took (  8.613085) seconds to execute.
