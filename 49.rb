require 'mathn'

class Integer
  def ordenado
    self.to_s.each_char.sort.inject(:+)
  end
end

class Array
  def diferencias
    if self.length==2 then [(self[1]-self[0]).abs]
    else self[1..-1].collect{|x|( x-self[0]).abs}+self[1..-1].diferencias
    end
  end
end


hash=Hash.new([])
Prime.each(10000){|x| hash[x.ordenado]+=[x] if x>999}

hash.each{|k,v|p "#{v} : #{v.diferencias}"  if v.length >2}
