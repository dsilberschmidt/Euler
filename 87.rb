require 'prime'

def busqueda
  max = 5*10**7
  r = []
  primos2 = Prime.each(max**Rational(1,2)).to_a
  primos3 = Prime.each(max**Rational(1,3)).to_a
  primos4 = Prime.each(max**Rational(1,4)).to_a
  primos4.each do |p4|
    primos3.each do |p3|
      primos2.each do |p2|
        #print [p2,p3,p4],' ',r,"\n"
        if  (n = p2 **2 + p3**3 + p4**4)  >=  max then break end
        r << n
      end
      break if p3**3 + p4**4 >= max 
    end
  end
  r.uniq.length
end
 
