require 'mathn'

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
  r=0
  c=99999999
  2.upto(10000000) do |n|
    if   n/(t=n.totient).to_f < c && t.to_s.chars.to_a.permutation(t.to_s.length).sort.join == n.to_s.chars.to_a.permutation(n.to_s.length).sort.join 
      r = n
      c= n/t.to_f
      print n,' ',t,' ',c,"\n"
    end
  end
  r
end

def busqueda2
  r= 1014109 
  c = 9999999
  primos1 = Prime.each(10_000).to_a
  primos = primos1.combination(2).to_a.collect{|p| p[0]*p[1]}.delete_if{|x| x>10_000_000}.uniq.sort.reverse
  p primos [0..100] 
  primos.each do |n|
      print n,' ',r,' ',c,' ',t = n.totient,' ',n/t.to_f,"\n"
      if  n/(t=n.totient).to_f < c && t.to_s.chars.to_a.permutation(t.to_s.length).sort.join == n.to_s.chars.to_a.permutation(n.to_s.length).sort.join         
        r = n
        c= n/t.to_f
        print n,' ',t,' ',c,"\n"
      end
  end
  r
end

# 7026037 no fue
