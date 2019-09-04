require 'prime'

class Integer
  def fact
    if self == 0 then 1
    else (1..self).inject(:*)
    end
  end
  def fact_sf
    if self == 0 then 1
    else (1..self).inject(0){|m,v| m +=  (p v).sf}
    end
  end
  def choose_sf(n)
    self.fact_sf - n.fact_sf - (self-n).fact_sf
  end
  def choose(n)
    self.fact / n.fact/(self-n).fact
  end
  def sf
    self.prime_division.inject(0){|m,p| m += p[0]*p[1]}
  end
end

def busqueda
  s = 0
  15_000_001.upto(20_000_000) do |n|
    s += (p n).sf
  end
  1.upto(5_000_000) do |m|
    s -= (p m).sf
  end
  s
end
