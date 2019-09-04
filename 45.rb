class Integer
  def triangular?
    a=Rational('1/2')
    b=Rational('1/2')
    c=-self
    r1=-b + Math.sqrt(b**2-4*a*c)
    r1%1 == 0 
  end
  def pentagonal?
    a=Rational('3/2')
    b=Rational('-1/2')
    c=-self
    r1=(-b + Math.sqrt(b**2-4*a*c))/(2*a)
    #r2= (-b - Math.sqrt(b**2-4*a*c))/(2*a)
    r1%1 == 0 #|| r2%1 == 0 
  end
  def hexagonal? 
    a=2
    b=-1
    c=-self
    r1=(-b + Math.sqrt(b**2-4*a*c))/(2*a)
    r1%1 == 0 
  end
  def triangular
    self*(self+1)/2
  end
  def pentagonal
    self*(3*self-1)/2
  end
  def hexagonal 
    self*(2*self-1)
  end

end
def busqueda
t=144
(t += 1 ;puts t.hexagonal )while !t.hexagonal.triangular? || !t.hexagonal.pentagonal?
puts "#{t} #{t.hexagonal} #{t.hexagonal.triangular?} #{t.hexagonal.pentagonal?}" 
end
