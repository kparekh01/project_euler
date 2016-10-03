def to_the_thousand_sum(num)
    (num ** 1000).to_s.split("").map{|number| number.to_i }.inject(:+)
end

p to_the_thousand_sum(2) # 1366