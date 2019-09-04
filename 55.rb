class Integer
  def reverse
    self.to_s.reverse.to_i
  end
  def palindrome?
    self == self.reverse
  end
  def lych?
    (self + self.reverse).palindrome?
  end
  def lychrelr?
    self.lych? || 
    (self + self.reverse).lychrelr?
  end
  def lychrel?
    r=nil
    1.upto(50).collect{|n| 1.upto(n).inject(self){|mem,x| mem.lych? ? (r=true ; break)   : mem = mem + mem.reverse}}
    r 
  end 
end

def busqueda 
  puts 1.upto(9999).inject(0){|sum,x|  x.lychrel? == nil ? ( puts "#{x} #{sum}"; sum += 1) : sum}
end
