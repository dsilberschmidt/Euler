def busqueda
  h = Hash.new([])
  max = 100 
  1.upto(max-2) do |a|
    1.upto(max -a) do |b|
      if (c = (a**2+b**2)**Rational(1,2)) % 1 == 0
        h[a+b+c] += [[a,b,c.to_i].sort] 
        h[a+b+c].uniq!
        print a,' ',b,' ',c.to_i,"\n"
        print a+b+c.to_i,' ', h[a+b+c],"\n"
      end
    end
  end
  [h,h.count{|x| x[1].length == 1}]
end

def busqueda2
  h = Hash.new([])
  #max = 1_500_000 
  max =  1500
  1.upto(max/3) do |a|
    b = a 
    while (c = (a**2+b**2)**Rational(1,2)) - b >= 1 && b <= max -a -c do
      if c % 1 == 0 
        h[a+b+c] += [[a,b,c.to_i].sort]
        h[a+b+c].uniq!
        print a,' ',b,' ',c.to_i,"\n"
        print a+b+c.to_i,' ', h[a+b+c],"\n"
      end
      b += 1
    end
  end
  h.count{|x| x[1].length == 1}
end

def busqueda3
  h = Hash.new([])
  max = 1_500_000 
  #max =  1500
  1.upto(max/2) do |n|
    max.downto(n+1) do |m|
      print 'parametros ',n,' ',m,"\n"
      next if n**2 + m**2 > max/2
      k = 1
      while (a = k*(m**2-n**2)) + (b = k*2*m*n) + (c = k * (m**2+n**2)) <= max do
        h[a+b+c] += [[a,b,c].sort]
        h[a+b+c].uniq!
        print '             ',a,' ',b,' ',c,"\n"
        print '             ',a+b+c,' ', h[a+b+c],"\n"
        sleep 5
        k += 1
      end
    end
  end
  h.count{|x| x[1].length == 1}
end

def busqueda4
  h = Hash.new([])
  max = 1_500_000
  #max =  1500
  max = max ** Rational(1,2)
  1.upto(max) do |n|
    max.downto(n+1) do |m|
      print 'parametros ',n,' ',m,"\n"
      next if n**2 + m**2 > max/2
      k = 1
      while (a = k*(m**2-n**2)) + (b = k*2*m*n) + (c = k * (m**2+n**2)) <= max do
        h[a+b+c] += [[a,b,c].sort]
        h[a+b+c].uniq!
        print '             ',a,' ',b,' ',c,"\n"
        print '             ',a+b+c,' ', h[a+b+c],"\n"
        sleep 5
        k += 1
      end
    end
  end
  h.count{|x| x[1].length == 1}
end

