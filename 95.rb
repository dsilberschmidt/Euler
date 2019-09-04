require 'prime'

class Integer
  def divisores_primos
    self.prime_division.collect{ |p| [p[0]]*p[1] }.flatten
  end
  def divisores
    n=self.divisores_primos
    [1]+(1..n.length).collect{|x|n.combination(x).to_a.collect{|a|a.inject(:*)}}.flatten.uniq.sort-[self]
  end
  def amigable?
    self == self.divisores.inject(:+).divisores.inject(:+) && self != self.amigo_potencial
  end
  def amigo_potencial
    self.divisores.inject(:+)
  end
end

def busqueda
  min = ''
  eslabones = 0
  amigos_min = []
  2.upto(1_000_000) do |x|
    c = 0
    p a = x
    amigos = []
    loop do
      p a = a.amigo_potencial
      c += 1
      ami = amigos.dup
      amigos.push(a)
      #print x,' ',ami,' ',amigos,' ',a,"\n"
      print x,' ',min,' ',eslabones,"\n"
      break if a > 1_000_000 || a == x || a == 1 || ami.include?(a) #||amigos.pop == a
    end
    min, eslabones, amigos_min = a, c, amigos if a == x && c > eslabones
  end
  [min, eslabones,amigos_min]
end
