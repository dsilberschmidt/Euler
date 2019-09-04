class Integer
  def fact
    if self == 0 then 1
    else (1..self).inject(:*)
    end
  end
  def choose(n)
    self.fact / n.fact/(self-n).fact
  end
end

def busqueda(d)
  s = 0
  (1..9).each do |x|
    p x
    s += ((p (d-1).choose(x)) * (p 9.choose(x))
    #sleep 5
  end
  (1..10).each do |y|
    s += ((d-1).choose(y) * (10.choose(y))
  end
  s
end
