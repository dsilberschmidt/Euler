a, b , sum = 1, 1, 0
until a+b > 4_000_000 do
a, b= a+b,a
puts a
sum = sum + a if a%2==0
end
print "sum = ", sum
