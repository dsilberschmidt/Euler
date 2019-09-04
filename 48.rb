puts (1..1000).each.inject{|sum,x| sum+=(x**x).modulo(10**10)}.modulo(10**10)
