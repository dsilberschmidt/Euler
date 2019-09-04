require 'prime'

def busqueda
  max = 10 **6 
  s = 0 
  a = Prime.each(max**2).to_a 
  p a[0..100]
  1.upto(max) do |n|
    x=n**2
    if (p i=(a.index(x+1))) && !i.nil? &&  a[i+1]==(x+3) && a[i+2]==(x+7) && a[i+3]==(x+9) && a[i+4]==(x+13) && a[i+5]==(x+27)
      s += n
      print n,' ',s,"\n"
    end
  end
  [s , a]
end
