class Fixnum
def chain
  n=self
  while n != 1 && n != 89 do
    n=  n.to_s.chars.inject(0){|p,x|  p+=(x.to_i) **2}
  end
  n
end
end

def busqueda
1.upto(9999999).inject(0){|c,n|puts;print n,' ';if (p n.chain) ==89 then c+=1 else c end}
end   
