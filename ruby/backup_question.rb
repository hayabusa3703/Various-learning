X,Y,P= gets.split

#数値変換
X1 = X.to_i
Y1 = Y.to_i
P1 = P.to_i

division = X1 / Y1
division2 = division + 1


if X1%Y1 == 0
    puts division * P1
else
    puts division2 * P1
end