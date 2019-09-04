class Integer
  def fact
    if self == 0
      1
    else
      1.upto(self).inject(:*)
    end
  end
  def sf
    self.to_s.chars.inject(0){|m,d| m+= d.to_i.fact}
  end
  def ciclo
    a = Array.new
    n = self
    c = 0
    loop do
      n = n.sf
      break([c,a]) if a.include?(n)
      c += 1
      a << n
    end
  end   
      
      
end

def busqueda
  c = 0
  1.upto(80) do |n|
    puts  n if n%50000 == 0
    if (v = n.ciclo[0]) == 55555 
      print v,"\n"
      c += 1
    end 
  end
  c
end
    

