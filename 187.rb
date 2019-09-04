require 'prime'

class Integer
  def np
    self.prime_division.inject(0){|m,p| m+=p[1]}
  end
end

def busqueda
  c=0
  2.upto(10**8) do |n|
    (c += 1;print n,' ',c,"\n")  if n.np == 2
  end
  c
end
  
def busqueda2
  max = 10**8 
  a=Prime.each(max/2).to_a
  a.product(a).collect{|p| p p[0]*p[1]}.delete_if{|n| n >= max}.uniq.count
end

def busqueda3
  max = 10**8
  r = 0
  primos = Array.new
  Prime.each(max/2) do |p|
    r += 1 if p**2 < max
    primos.each do |pa|
      if p * pa < max
        r += 1
      else
        break
      end
    end
    primos << p
    print p,' ',r,"\n"
  end
  r
end
