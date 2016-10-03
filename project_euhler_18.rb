data = \
"75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"

rows = data.split("\n")
triangle = rows.map { |x| x.split(" ") \
  .map { |y| y.to_i } }
  
(triangle.length - 1).downto(0) { |a|
    
    0.upto(a-1) { |b| 
    p triangle [a-1][b] += [triangle [a][b], triangle [a][b+1]].max
    
    # triangle[13][0] += [triangle [14][0], triangle [14][1]].max 
    # 63 += [4, 62].max # 63 + 62 # 125 <-- now the first element in the new row 13
   
    # triangle[13][1] += [triangle [14][1], triangle [14][2]].max
    # 66 += [62, 98].max # 66 + 98 # 164 <-- now the second element in the new row 13
    
    #algo keeps going till the top, untill there is one total left.
  }
}
