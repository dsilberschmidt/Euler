require 'prime'

n=1;c= false
until c==true  do
c=(n..n+3).inject(true){|memo,num| sleep 0; memo &&= (p (p num).prime_division).length==4}
n+=1
end
puts n-1
p (n-1).prime_division
p n.prime_division
p (n+1).prime_division
p (n+2).prime_division
