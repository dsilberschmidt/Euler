require 'mathn'

class Fixnum
  def coprimo(n)
    !self.prime_division.find{|f| n.prime_division.find{|g| f[0]==g[0]}}
  end
end

def busqueda
  nmax = m = 0
  2.upto(1000000) do |n|
    phi=1 
    2.upto(n) do |m|
      phi+= 1 if n.coprimo(m)
    end
  if (mn = n.to_f/phi.to_f) > m then m, nmax= mn, n end
  print n,', ',phi,' ',mn,' ',nmax,' ',m,"\n"
  end
  [nmax,m]
end 

class Fixnum
  def phi
    p=1
    2.upto(self) do |m|
      p += 1 if self.coprimo(m)
    end
    p
  end

  def np
    self/self.phi.to_f
  end
end

def busqueda2
  2*3*5*7*11*13*17
end
