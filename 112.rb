class Integer
  def inc?
    self.to_s.chars.inject(0){|m,n| break(false) if n.to_i < m; m = n.to_i}
  end

  def dec?
    self.to_s.chars.inject(9){|m,n| break(false) if n.to_i > m; m = n.to_i}
  end

  def bouncy?
    !self.inc? && !self.dec?
  end
end

def busqueda
  c=0
  1.upto(100000000) do |n|
    if n.bouncy? then c+=1 end
    print n,' ',c,' ',c.to_f/n,"\n"
    break(n) if c.to_f/n >= 0.99
  end
end
