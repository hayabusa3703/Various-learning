#クレジットカードのチェックディジット問題

input_line = gets.to_i

input_line.times do
  aaa = gets
  aaa = aaa.chars
  aaa1 = aaa.map!{|x| x}

aaa1.delete("\n");

aaa2 = aaa1.first(15)
aaa3 = aaa2.map!{|x| x.to_i}
#p aaa3[14] + aaa3[11]

#kisuu1 = aaa3[15} Xだからいりません
kisuu3 = aaa3[13]
kisuu5 = aaa3[11]
kisuu7 = aaa3[9]
kisuu9 = aaa3[7]
kisuu11 = aaa3[5]
kisuu13 = aaa3[3]
kisuu15 = aaa3[1]
guu2 = aaa3[14] * 2
guu4 = aaa3[12] * 2
guu6 = aaa3[10] * 2
guu8 = aaa3[8] * 2
guu10 = aaa3[6] * 2
guu12 = aaa3[4] * 2
guu14 = aaa3[2] * 2
guu16 = aaa3[0] * 2

 odd = kisuu3 + kisuu5 + kisuu7 + kisuu9 + kisuu11 + kisuu13 + kisuu15




if guu2 >= 10
    guu2 = guu2 % 10 + 1
else
    guu2 = aaa3[14] * 2
end

if guu4 >= 10
    guu4 = guu4 % 10 + 1
else
    guu4 = aaa3[12] * 2
end

if guu6 >= 10
    guu6 = guu6 % 10 + 1
else
    guu6 = aaa3[10] * 2
end

if guu8 >= 10
    guu8 = guu8 % 10 + 1
else
    guu8 = aaa3[8] * 2
end

if guu10 >= 10
    guu10 = guu10 % 10 + 1
else
    guu10 = aaa3[6] * 2
end

if guu12 >= 10
    guu12 = guu12 % 10 + 1
else
    guu12 = aaa3[4] * 2
end

if guu14 >= 10
    guu14 = guu14 % 10 + 1
else
    guu14 = aaa3[2] * 2
end

if guu16 >= 10
    guu16 = guu16 % 10 + 1
else
    guu16 = aaa3[0] * 2
end


even = guu2 + guu4 + guu6 + guu8 + guu10 + guu12 + guu14 + guu16
#puts even


 oddeven = odd + even
 oddeven = oddeven % 10

  if oddeven == 0
    puts 0
  else
    oddeven = 10 - oddeven
    p oddeven
  end

end
