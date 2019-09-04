require 'mathn'

class Fixnum
  def totient
    self.prime_division.inject(self){|m,p| m-= m/p[0]}
  end
end

def busqueda
  m = 1e99
  o = Rational(15499,94744)
  2.upto(1e100) do |n|
    if (r= Rational(t = n.totient,(n-1))) <  o
      return(n)
    end
    m = r if r < m
    print n,' ',t,' ', r,' ',r.to_f,' ',m/o.to_f,"\n"
  end
end

def busqueda2
  m = 1e99
  o = Rational(15499,94744)
  Prime.each(1e100) do |p|
    n=  Prime.each(p).inject(:*)
    if (r= Rational(t = n.totient,(n-1))) <  o
      return(n)
    end
    m = r if r < m
    print n,' ',t,' ', r,' ',r.to_f,' ',m/o.to_f,"\n"
  end
end
# busque multiplos de 2 despues
