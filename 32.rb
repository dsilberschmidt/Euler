class Integer
  def pandigital?
    self.to_s.length==(p self.to_s.chars.to_a.uniq.join).length &&
    self.to_s !~ /0/ &&
    self.to_s.length == 9
  end
end

def busqueda

  s=[]
  %w(1 * 2 3 4 5 6 = 7 8 9).permutation(11) { |p|
    #p p
    m = (p.join =~ /(\d+)\*(\d+)=(\d+\z)/)
    #print p.join
    #print '   ',$1,'* ',$2, ' = ',$3, "\n"
    (s << (l= [$1,$2,$3]); print l, "\n")  if m && $1.to_i * $2.to_i ==$3.to_i
    #sleep 0.5
  }
  s.collect{|t| t[2]}.uniq.inject(0){|m,x| m+=x.to_i} 

end
