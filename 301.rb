class Fixnum
  def pierde_nim?
    self.to_s(2) =~ /11/
  end
end





def busqueda(max)
  ac = 0
  1.upto(max) do |n|
    ac += 1 if !n.pierde_nim?
    print n,' ',n.to_s(2),' ',n.pierde_nim?,"\n"
  end
  ac
end

def busqueda2(max)
  n = Math.log(max,2)
  if n == 1 then return(2) end
  if n == 2 then return(3) end
  busqueda2(max/2)+busqueda2(max/4)
end  
