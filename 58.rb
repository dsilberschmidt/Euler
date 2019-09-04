require 'prime'

def busqueda
  i=1
  d=1
  p=0 
  loop do
    i=i+2
    d=d+4
    p =p+  [i**2-(i-1),i**2-2*(i-1),i**2-3*(i-1)].count{|n| n.prime?}
    print i,': ',p,'/ ',d,' = ',p.to_f/d.to_f,"\n"
    #sleep 0.1 
    if p < d*0.1 then break end
  end
  puts i
end
