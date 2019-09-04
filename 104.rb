
class Integer
  def fib
    a, b, c = 1, 1, 2
    while c < self do
    a, b, c = a+b, a, c+1
    #print c, ' ', a, "\n"
    end
    a
  end
  def fib_last
    a, b, c = 1, 1, 2
    while c < self do
    a, b, c = (v=(a+b).to_s).length < 10 ? v.to_i : v[-9..-1].to_i , a, c+1
    #print c, ' ', a, "\n"
    end
    a
  end
  def fib_first
    a, b, c = 1, 1, 2
    while c < self do
      if (v = (a+b).to_s).length < 20
        a, b, c = a+b, a, c+1
      else
        a, b, c = (v[0..18]).to_i, (a.to_s[0..17]).to_i, c+1
      end
      #print c, ' ', a.to_s[0..8].to_i, "\n"
    end
    a.to_s[0..8].to_i
  end
end

class String
  def pandigital?
    s = self.to_s
    [1,2,3,4,5,6,7,8,9].inject(true){|m,d| m && s.include?(d.to_s)} && s.length == 9
  end
end

class Integer
def busqueda
  a, b, al, bl, c = 1, 1, 1, 1, 2
  while !(a.to_s[0..8].pandigital? && al.to_s.pandigital?) do
    al, bl, c = (v=(al+bl).to_s).length < 10 ? v.to_i : v[-9..-1].to_i , al, c+1
    if (v = (a+b).to_s).length < 20
      a, b = a+b, a
    else
      a, b = (v[0..18]).to_i, (a.to_s[0..17]).to_i
    end
    print c, ' ', a.to_s[0..8].to_i, ' ', al,"\n"
  end
  print c, ' ', a.to_s[0..8].to_i, ' ', al,"\n"
  c
end
end
