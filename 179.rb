require 'mathn'

class Integer
  def nd
    self.prime_division.inject(1){|m,p| m *= (p[1]+1)}
  end
end

def busqueda
  r=0
  n_ant= 2.nd
  3.upto(10**7) do |n|
    if (v = n.nd) == n_ant
      r+=1
      print (n-1),' ',r,"\n"
      #sleep 5
    end
    n_ant = v
  end
  r
end

