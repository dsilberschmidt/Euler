require 'prime'

class Integer
  def divisores_primos
    self.prime_division.collect{ |p| [p[0]]*p[1] }.flatten
  end
  def divisores
    n=self.divisores_primos
    [1]+(1..n.length).collect{|x|n.combination(x).to_a.collect{|a|a.inject(:*)}}.flatten.uniq.sort
  end
end

def busqueda(n)
  r = nil
  t = ((n*(n-1))/2)
  div = t.divisores
  div.each{|d| r = t/d if d*(d+1) == t}
  [n,r,div]
end

def busqueda2(i)
  loop do
    c = busqueda(i)
    if c[1] then return(c) end
    i+=1
  end
end

def busqueda3(i)
  loop do
    r= Math.sqrt(1+4*((i*(i+1))/2))
    if (r%1).abs < 1e-3
       print n = i+1,' ',b=((-1+r)/2)+1,"\n"  
      if Rational(b,n.to_i)*Rational(b-1,n.to_i - 1) == Rational(1,2) then return ([b,n]) end
    end 
    i+=1
  end
end

def busqueda4(i)
  ini = ((((((i*4)-2)/2.0)**2)+1)/2).to_i
  loop do
    if (r = Math.sqrt(2*ini**2-1)) % 1 == 0 
      if (n = (2+2* r)/4) && n > 1_000_000_000_000
         return(n)
      end 
    end
    ini += 1
  end
end

def busqueda5(n)
  loop do
    e = Math.sqrt(2*n**2-2*n+1)
    print n,"\n"
    return (n) if e %1 == 0 && e.round**2 == 2*n**2-2*n+1
    n += 1
  end
end   

def busqueda6(n)
  n=1
  loop do
    x = ((3+2*Math.sqrt(2))**n+(3-2*Math.sqrt(2))**n)/2
    y = ((3+2*Math.sqrt(2))**n-(3-2*Math.sqrt(2))**n)/2*sqrt(2)
    print n,' ',x,' ',y,"\n"
    n += 1
  end
end

def busqueda7
  x,y = 1,1
  loop do
    x, y = 3*x+4*y-2, 2*x + 3*y -1
    print x,' ',y,' ',b=(1+Math.sqrt(1+4*((y*(y-1))/2)))/2,"\n"
    return([y,b]) if x >= 1e12
  end
end

