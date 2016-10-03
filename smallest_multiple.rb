#Method will only evaluate to TRUE if number provided is evenly divisible by all
#numbers 1 through 20 inclusive.
def divided_by?(n)
  (1..20).all?{ |each_num| n % each_num == 0 }
end

beginning_time = Time.now
n = 2520           #set number to the current smallest multiple of 1 through 10 inclusive.
loop do            #start my loop
  if divided_by?(n)#if a number in this loop makes this statement TRUE
    puts n         #print that number ot the screen
    break          #and BREAK(stop) the loop.
  else
    n += 20        #otherwise increase that number by an increment of 20
  end              #and send it back through the loop until the if becomes true.
end
end_time = Time.now
puts "Time elapsed #{(end_time - beginning_time)} seconds"

#takes 35 seconds to run.