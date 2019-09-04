require 'prime'

def busqueda
  max = 9
  a = (2..max).collect{|x| 2*x**2-1}
  Prime.each((2*max**2-1)**Rational(1,2)) do |p|
    print p,' ',a.length,"\n"
    a = a.delete_if{|x| x % p == 0 && x != p}
  end
  [a,a.length]
end

def busqueda2
  max = 9 
  ac = 0
  a = (2..max).collect{|x| 2*x**2-1}
  m = a.max
  Prime.each((2*max**2-1)) do |p|
    ac +=1 if a.include?(p)
    print m,' ',p,' ',((m/p)*100)%0.00001,' ',ac,"\n"
  end
  ac
end

def busqueda3
# uso propiedades de numeros de Mersenne
# MAL no es un numero de Mersenne
  max = 9 
  a = Prime.each(max).collect{|x| if (p n = 2*x**2-1).prime? then n end}.compact
  [a,a.length]  
end

def busqueda4
 max = 400 
  a = (2..max).collect{|x| 2*x**2-1}
  a.each_with_index{|x,i| print i+2,' ',(i+2).prime_division,' ',x.prime?,' ',x,' ',x.prime_division,"\n"}
end

def busqueda5
  max = 50_000_000
  a = (2..max).collect{|x| if miller_rabin(n=2*x**2-1) then p n end}.compact
  [a,a.length]
end

def busqueda6
  max = 10_000
  a = (2..max).inject([]){|m,x| n = (2*x**2)-1; if !n.prime? then m = (m +  n.prime_division.collect{|p| if (t = p[0]) < 50_000 then t end}).flatten.compact.uniq.sort else m end}
end

def busqueda7
  d= [7, 17, 23, 31, 41, 47, 71, 73, 79, 89, 97, 103, 113, 127, 137, 151, 167, 191, 193, 199, 223, 233, 239, 241, 257, 263, 271, 281, 311, 313, 337, 353, 359, 367, 383, 401, 409, 431, 433, 439, 449, 457, 463, 479, 487, 503, 521, 569, 577, 593, 599, 601, 607, 617, 631, 641, 647, 673, 719, 727, 743, 751, 761, 769, 809, 823, 839, 857, 863, 881, 887, 911, 919, 929, 937, 953, 967, 977, 983, 991]
  max = 50_000_000
  a = (2..max).collect{|x| 2*x**2-1}
  d.each do |p|
    a = a.delete_if{|x| x % p == 0 && x != p}
    print p,' ',a.length,"\n"
  end
  a.length
end

def busqueda8
  dmax = 80_000 
  d = (2..dmax).inject([]){|m,x| n = (2*(p x)**2)-1; if !n.prime? then m = (m +  n.prime_division.collect{|p| if (t = p[0]) < 1_000_000 then t end}).flatten.compact.uniq.sort else m end}
  print 'd', d, "\n" 
  max = 50_000_000
  a = (2..max).collect{|x| 2*x**2-1}
  d.each do |p|
    a = a.delete_if{|x| x % p == 0 && x != p}
    print p,' ',a.length,"\n"
  end
  largo = a.length
  a.count{|x| print x,' ', x.to_s.length,' ',largo,"\n" ; miller_rabin(x)}
  #b = a.collect{|x| if miller_rabin(x) then p x end}.compact
  #[b,b.length]
end

def busqueda9
  a = Array.new
  f=[2,2,2,2,2,2,2,2]
  max = 50_000_000
  b = (2..max).collect{|x| 2*x**2-1}
  while b.any? do 
    n = b.shift
    if miller_rabin(n)
      a << n
    elsif f.inject(:+) < 8_000_000
      n.prime_division.each{|p| print 'fuera: ',p[0],"\n"; f.push(p[0]).shift; b.reject!{|x| (x % p[0]).zero?}}
    end
    print n,' van ',a.length,' quedan ',b.length,' ',f.inject(:+),"\n"
  end
  [a,a.length]
end
      
def busqueda10
  max = 50_000_000
  a = (2..max).collect{|x| print '                        ', x,"\n";if miller_rabin(n=2* x**2-1) then (p n) end}.compact
  [a,a.length]
end


# programar Lucas-Lehmer

#baje este miller_rabin de wikipedia

   # Copyright (c) 2010 the authors listed at the following URL, and/or
   # the authors of referenced articles or incorporated external code:
   # http://en.literateprograms.org/Miller-Rabin_primality_test_(Ruby)?action=history&offset=20090326153929
   # 
   # Permission is hereby granted, free of charge, to any person obtaining
   # a copy of this software and associated documentation files (the
   # "Software"), to deal in the Software without restriction, including
   # without limitation the rights to use, copy, modify, merge, publish,
   # distribute, sublicense, and/or sell copies of the Software, and to
  # permit persons to whom the Software is furnished to do so, subject to
  # the following conditions:
  # 
  # The above copyright notice and this permission notice shall be
  # included in all copies or substantial portions of the Software.
  # 
  # THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
  # EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
  # MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
  # IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
  # CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
  # TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
  # SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
  # 
  # Retrieved from: http://en.literateprograms.org/Miller-Rabin_primality_test_(Ruby)?oldid=16299
  
  
  def modPow(x, r, m)
      y = r
      z = x
      v = 1
      while y > 0
          u = y % 2
          t = y / 2
          if u == 1
              v = (v * z) % m
          end
          z = z * z % m
          y = t
      end
      return v
  end
  
  
  def miller_rabin_pass(a, n)
      d = n - 1
      s = 0
      while d % 2 == 0 do
          d >>= 1
          s += 1
      end
  
  
      a_to_power = modPow(a, d, n)
      if a_to_power == 1
          return true
      end
      for i in 0...s do
          if a_to_power == n - 1
              return true
          end
          a_to_power = (a_to_power * a_to_power) % n
      end
      return (a_to_power == n - 1)
  end
  
  
  def miller_rabin(n)
      k = 20
      for i in 0...k do
          a = 0
          while a == 0
               a = rand(n)
          end
          if (!miller_rabin_pass(a, n))
              return false
          end
      end
      return true
  end
  
  
#  if ARGV[0] == "test"
#      n = ARGV[1].to_i
#      puts (miller_rabin(n) ? "PRIME" : "COMPOSITE")
#  elsif ARGV[0] == "genprime"
#      nbits = ARGV[1].to_i
#      while true
#          p = rand(2**nbits)
#          if (p % 2 == 0)
#              next
#          elsif (p % 3 == 0)
#              next
#          elsif (p % 5 == 0)
#              next
#          elsif (p % 7 == 0)
#              next
#          end
#  
#          if miller_rabin(p)
#             puts "#{p}"
#             break
#         end
#     end
# end
 



