require 'prime'

def busqueda
  ac = 0
  1.upto(10000) do |n|
    ac += 1 if (2**n-1).prime?
    puts n
  end
  ac
end

def busqueda2
  ac = 0
  Prime.each(2**10000-1) do |i|
    if (n = Rational((i+1),2)**Rational(1,2)) %1  == 0
      ac += 1 
      print n,' ',i,' ',ac,"\n"
    end
  end
  ac
end

def busqueda3
  ac = 0
  max = 2 * 10000 **2 -1
  p = Prime.new
  n = (1..10000).collect{|n| 2*n**2-1}.to_enum
  pi = p.next
  ni = n.next
  while ni < max  do 
    if pi == ni
      ac += 1
      print pi,' ',ac,"\n"
      pi = p.next
      ni = n.next
    elsif pi < ni
      pi = p.next
    else
      ni = n.next
    end
  end
  ac
end

def busqueda4
  
  a=(2..50_000_000).collect{|x| 2*x**2-1}
  Prime.each(a.max**Rational(1,2)) do |p|
    puts p
    a = a.delete_if{|x| x % p == 0 && x != p}
  end
  [a,a.length]
end
