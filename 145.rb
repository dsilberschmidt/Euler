class Integer
  def reversible?
    return(false) if self.to_s.reverse[0] == '0'
    n =  self + self.to_s.reverse.to_i
    n.to_s.chars.all?{|d| d.to_i.odd?}
  end
end


def busqueda
  (1..999_999_999).count{|x| print x,' ' if f=x.reversible?;f}
end    
