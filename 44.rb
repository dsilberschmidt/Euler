class Integer
def pentagonal 
  self * (3*self - 1) / 2
end

def pb
  (Rational(3,2)*self**2-Rational(1,2)*self).to_i
end
def pc
  (3.0*self**2/2-self/2.0).to_i
end

def r1
  ((Rational(1,2)+Math.sqrt(Rational(1,4)+(6*self)))/3).to_i
end

def r2
  (Rational(1,2)+Math.sqrt(Rational(1,4)-(6*self)))/3.0
end
end

def busqueda
p=(1..2500).collect{|x| x.pentagonal}
p2=(1..5000).collect{|x| x.pentagonal}
d= p.combination(2)
d = d.collect{|g| [g[1]-g[0],g[0],g[1]]}.sort
d.find{|g| p2.include?(g[1]+g[2]) && p2.include?(g[0])}
end
