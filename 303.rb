require 'prime'

class Integer
  def divisores_primos
    self.prime_division.collect{ |p| [p[0]]*p[1] }.flatten
  end
  def divisores
    n=self.divisores_primos
    [1]+(1..n.length).collect{|x|n.combination(x).to_a.collect{|a|a.inject(:*)}}.flatten.uniq.sort
  end
end
        
def busqueda2
  h = Hash.new
  max = 10_000
  r = (1..max).to_a
  s = 0
  c = 0
  bfn = 1
  while c < max-30 do
    fn = bfn.to_s(3).to_i
    a = fn.divisores
    if a & r != []
      a.each  do |n|
        if n <= max && h[n] == nil
          h[n] = fn
          s += fn/n
          c += 1
        end
      end
      r -= a
      print c,' ', s,' '
      if c > 9700 then print r end
      print "\n"
    end
  bfn += 1
  end
  [s,h.sort]
end
     
def busqueda3
  h = Hash.new
  max = 998
  r = (1..max).to_a
  s = 0
  c = 0
  bfn = 1
  while c < max do
    fn = bfn.to_s(3).to_i
    a = fn.divisores_comp
    # print  fn, ' ', a,"\n"
    #sleep 3
    if a & r != []
      a.each  do |n|
        if n <= max && h[n] == nil
          h[n] = [fn,bfn]
          s += fn/n
          c += 1
          #print n,' ',fn,' ',c,"\n"
          #sleep 3
          #print h.sort,' ',s,' ',c,"\n"
          #sleep 3
        end
      end
      r -= a
    end
  print fn,' ',fn.to_s.length,' ',c,' ', s,' '
  if c > max-30 then print r end
  print "\n"
  bfn += 1
  end
  [s,h.sort]
end
 
# a.select{|x| print x,"\n" if x[0]%9 == 0 && x[0] < 100}    
# 8991.step(999999999999999999999,8991){|x|break (x)  unless (p x).to_s =~ /[^0-2]/} 

def busqueda4  
  h = Hash.new
  max = 10_000
  r = [999, 1998, 2997, 3996, 4995, 5994, 6993, 7992, 8991, 9899, 9989, 9990, 9999] 
  s = 972536347
  c = 9987
  k = (0..14).to_a.combination(3).sort.to_enum
  while ke = k.next do
    bfn = '222222222222222'
    bfn[ke[0]], bfn[ke[1]], bfn[ke[2]] = '1','1','1'
    fn = bfn.to_i    
    a = fn.divisores_comp & r
    # print  fn, ' ', a,"\n"
    #sleep 3
    if a != []
      a.each  do |n|
        if n <= max && h[n] == nil
          h[n] = fn
          s += fn/n
          c += 1
          #print n,' ',fn,' ',c,"\n"
          #sleep 3
          #print h.sort,' ',s,' ',c,"\n"
          #sleep 3
        end
      end
      r -= a
    end
  print fn,' ',fn.to_s.length,' ',c,' ', s,' '
  if c > max-30 then print r end
  print "\n"
  end
  [s,h.sort]
end

def busqueda5
  h = Hash.new
  max = 10_000
  r = [4995, 9899, 9989, 9990, 9999]
  s = 313225448371
  c = 9995
  bfn = [1112222222222220,11112222222222222222]
  while c < max do
    fn = bfn.shift
    a = fn.divisores_comp & r
    # print  fn, ' ', a,"\n"
    #sleep 3
    if a != []
      a.each  do |n|
        if n <= max && h[n] == nil
          h[n] = fn
          s += fn/n
          c += 1
          #print n,' ',fn,' ',c,"\n"
          #sleep 3
          #print h.sort,' ',s,' ',c,"\n"
          #sleep 3
        end
      end
      r -= a
    end
  print fn,' ',fn.to_s.length,' ',c,' ', s,' '
  if c > max-30 then print r end
  print "\n"
  end
  [s,h.sort]
end

#11112222222222222222 20 9998 1111980581673483 [9899, 9989]

def busqueda6
  9899.step(999999999999999999999,9899){|x|break (x)  unless (p x).to_s =~ /[^0-2]/}
end

def busqueda7
  9989.step(999999999999999999999,9989){|x|break (x)  unless (p x).to_s =~ /[^0-2]/}
end 

def busqueda8(num)
  numero = Enumerator.new do |yielder|
    number = 0
    count = num
    loop do
    number += count
    yielder.yield number
    end
  end

  trinario = Enumerator.new do |yielder|
    number = 0
    loop do
      number += 1
      yielder.yield number.to_s(3).to_i
    end
  end

  a = numero.next
  b = trinario.next
  loop do
    print a, ' ', b,' ',b.to_s.length,"\n" 
    if    a > b
      b = trinario.next until a <= b
    elsif a < b
      a = numero.next until   a >= b
    else 
      b =trinario.next
      a = numero.next
    end
  return(a) if a == b
  #sleep 3
  end
end
   
def busqueda9(num)
  nn = 0
  numero = Enumerator.new do |yielder|
    count = num
    loop do
    nn += count
    yielder.yield nn
    end
  end

  trinario = Enumerator.new do |yielder|
    number = 0
    loop do
      number += 1
      yielder.yield number.to_s(3).to_i
    end
  end

  a = numero.next
  b = trinario.next
  loop do
    print a, ' ', b,' ',b.to_s.length,"\n"
    if    a > b
      b = trinario.next until a <= b
    elsif a < b
      nn += ((b-a)/num)*num
      a = numero.next 
    else
      b =trinario.next
      a = numero.next
    end
  return(a) if a == b
  #sleep 3
  end
end

#1111980581673483 +1122559978+200441708 
