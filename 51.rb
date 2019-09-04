require 'prime'

class Integer
def check(n)
  ac = 1
  n.to_i.succ.upto(9) do |x|
    ac += 1 if  self.to_s.gsub(/#{n}/,x.to_s).to_i.prime?
    p x
  end
  ac >= 7
end
end

def busqueda
  p = Prime.new
  loop do 
    a = p.next
    if  a.to_s =~ /(0|1|2).*\1/
      return(a) if  a.check($1) 
    end
  end
end
