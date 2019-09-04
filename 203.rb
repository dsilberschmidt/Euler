def pascal(n)
  a = Array.new
  if n==1 then return ([1]) end
  if n==2 then return ([1,1]) end
  a[0],a[n-1]= 1,1
  pant = pascal(n-1)
  (1..n-2).each{|x| a[x]= pant[x-1] + pant[x] }
  a
end

def numpascal(n)
  a = Array.new
  1.upto(n) do |x|
    a = (a +  pascal(x)).uniq.sort
  end
  a
end
class Integer
  def squarefree?(n)
    x.prime_division.any?{|y| y[1]> 1}
  end
end

#def busqueda(n)
#  numpascal(n).delete{|x| if x.prime_division.any?{|y| y[1]> 1}
#end  
