class Integer
  def triangular?
    a=Rational('1/2')
    b=Rational('1/2')
    c=-self
    r1=-b + Math.sqrt(b**2-4*a*c)
    r1%1 == 0 
  end
end
   

class String
  def valor
    self.bytes.to_a.inject(0){|sum,c|sum += c-"A".bytes.to_a[0]+1} 
  end
end

def busqueda
  a=File.readlines('/home/cactussediento/Desktop/words.txt',',').collect{|w| w[1..-3]}
  a.inject(0){|sum,w| w.valor.triangular? ? sum += 1 : sum}
end
