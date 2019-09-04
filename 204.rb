require 'prime'

def busqueda
  max = 1e8
  a = Prime.each(100).reverse
  a.each do |p|
    (Math.log(max) / Math.log (p)).downto(0)
  end
end

class Integer
  def nh(n)
    if n=2 then
      return(self/2) 
    else
      true
    end 
end
  
