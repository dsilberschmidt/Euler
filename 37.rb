require 'prime'

class Integer
  def trunc?
    (1..self.to_s.length-1).inject(true){|memo,c|  memo=memo && ( self.to_s[0..-c-1].to_i.prime?) && ( self.to_s[c..-1].to_i.prime?)}
  end
end

def struncs
  s,n=0,0
  p=Prime.new
  while n<11 do
    pr=p.succ
    if pr < 10 then next 
    end
    if pr.trunc? then
      s+=pr
      n+=1
      puts pr
    end
  end
  s
end
  
