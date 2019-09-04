class Integer
  def diag
    1+4*((1..self).each.inject(0){|sum,x| sum+= 4*x**2+x+1})
  end
end
