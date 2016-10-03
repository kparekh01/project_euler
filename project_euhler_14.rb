def l_c_s(num)
length = 1
  while (num > 1)
    num.even? ? num = num/2 : num = 3 * num + 1
    length += 1
  end
  length
end
results = []
i = 0
while i < 1000000
results << l_c_s(i)
puts i if l_c_s(i) == 525
i += 1
end
p results.max #525  takes about 8 to 10 seconds, come back and optimize!