require 'prime'
require 'mathn'

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

puts ((2..10000).collect{|n| n if n.amigable?}-[nil]).inject(:+)
  
