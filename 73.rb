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

  def np
    self/self.phi.to_f
  end

end

def busqueda
  m=0
  #t=0
  3.upto(8) do |n|
    m += n.phimod
    #t += n.phi
    print n,' ',m,"\n"
  end
  m 
end

# 12000 7295373 no fue
