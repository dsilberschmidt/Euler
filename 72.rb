require 'prime'

class Fixnum

  def coprimo(n)
    !self.prime_division.find{|f| n.prime_division.find{|g| f[0]==g[0]}}
  end

  def phi
    p=1
    2.upto(self) do |m|
      p += 1 if self.coprimo(m)
    end
    p
  end

  def phimod
    c=0
    (self/3.0).ceil.upto( self/2) do |m|
      c += 1 if self.coprimo(m)
    end
    c
  end

  def totient
    self.prime_division.inject(self){|m,p| m-= m/p[0]}
  end

  def np
    self/self.phi.to_f
  end

end

def busqueda
  m=0
  t=0
  #t=0
  2.upto(1000000) do |n|
    #m += n.phi
    t += n.totient
    #t += n.phi
    print n,' ',m,' ',t,"\n"
  end
  m 
end

# 12000 7295373 no fue
