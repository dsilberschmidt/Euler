class Integer
  def sumas
    if self == 0 then
      return([[]])
    else
      s = []
      (self).downto(1) do |n|
        s +=  (self-n).sumas.collect{|s| s.unshift(n).sort.reverse}
      end
    end
    s.uniq
  end
end

def busqueda
  l = Array.new(0)
  l[2] = 0
  3.upto(100) do |n|
    print n,' ',l[n] = n.sumas.length-1,' ', l[n]-l[n-1] ,"\n"
  end
end   

def busqueda2
  2**98
end

#encontre que p(100)= 190,569,292

#por lo tanto la sol es p(100) - 1 
