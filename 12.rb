require 'mathn'

class Array
  def rest
    self.values_at(1..-1)
  end
end

class Fixnum
  def  primos_menores
    Prime.each(self/2).to_a
  end

  def exponente(divisor)
    ((0..Math.log(self)/Math.log(divisor)).collect{|e|e if self%(divisor**e)==0}-[nil]).pop
  end 
  
  def divisores_primos
    hash = Hash.new
    #Prime.each(self/2).collect{|p| [p , self.exponente(p)] if self.exponente(p) !=0}-[nil]
    #Prime.each(self/2).collect{|p| hash[p]=self.exponente[p]}
    Prime.each(self){|p| hash[p]= self.exponente(p) if self.exponente(p)!=0}
    hash
  end    
  
  def hash_divisores_triangular
    h=self.divisores_primos.merge((self+1).divisores_primos){|k,n,o|[n,o].max }
    if h[2] then h[2]-=1 end
    h.delete_if{|k,v|v==0}
    #print "#{self} #{self.triangular} #{h}"
  end

  def numero_divisores_triangular
    self.hash_divisores_triangular.values.inject(1){|prod,n|prod*(n+1)}
  end
   
  def numero_divisores
    a=self
    Prime.each(self/2).inject(1){|prod,p| prod*=(a.exponente(p))+1}
  end
  
  def triangular
    (1..self).inject{|sum,n|sum+=n}
  end
 
  def divisores_primosb(array)
    case 
      when array.empty?
           []
      when self%array.first == 0 
           if (self/array.first)%array.first != 0
              (self/array.first).divisores_primos(array.rest).unshift(array.first)
              else
             (self/array.first).divisores_primos(array).unshift(array.first)
           end
      else  self.divisores_primos(array.rest)
    end
  end
   
end

#p 100.primos_menores
#p 100.primos_menores_sqrt.rest
#p (1..7).to_a.rest

#p 100.divisores_primos([])
#p 100.divisores_primos([2])
#p 100.divisores_primos(100.primos_menores_sqrt)

#(1300..10000).each{|n| puts "#{n} #{n.triangular} #{n.triangular.numero_divisores}";break if n.triangular.numero_divisores>500}

#(1..100000).each{|n| n if n%32==0}.each{|t| puts "#{t} #{t.triangular} #{t.triangular.numero_divisores}"; break if t.triangular.numero_divisores >500}


#(1..100000).each{|t| puts "#{t} #{t.triangular} #{a=t.numero_divisores_triangular}"; break if a >500}




