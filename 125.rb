class Integer
  def palindrome?
    self.to_s == self.to_s.reverse
  end
end

def busqueda
  h = Hash.new
  r = []
  max = 10**8
  1.upto(Math.sqrt(max).to_i ) do |n|
    c =   n**2
    h.each_key do |k|
      #print 'h: ',h,' k: ',k, ' r: ',r,"\n"
      h[k][0] += c
      if h[k][0].palindrome? && h[k][0] < max
        h[k][2] = n
        r << h[k].dup 
      else
        h.delete(k) if h[k][0] >= max
      end
    end 
    h[c] = [c,n]
    #sleep 2
  end
  ac = r.collect{|r| r[0]}.uniq.inject(:+)
  [ac, r.sort{|x| x[0].to_i} , h]
end 
