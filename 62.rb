class String
  def cube?
    (Math.exp(Rational(1,3)*Math.log(self.to_i)).round)**3 == self.to_i
  end
end
class Fixnum
  def permcube
   n = (self**3).to_s
   n.chars.to_a.permutation(n.length).to_a.delete_if{|a|a[0] == '0'}.collect{|p| p.join }.uniq
  end
end

def busqueda
  345.upto(1000)do |n|
    a = n.permcube
    c = a.count{|x| x.cube?}
    print n,' ',c,"\n"
    if c==5 then break (n) end
  end
end 

def busqueda2
  h = Hash.new([])
  1.upto(1000000000000) do |n|
    cube = n**3
    p key = cube.to_s.chars.sort.join
    h[key] = h[key] + [n]  
    if h[key].length == 25 then return (h[key]) end
  end
end
