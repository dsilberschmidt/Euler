require 'prime'

class Integer
  def nprimos(b)
    n=0
    while (n**2+self*n+b).prime? do
      n+=1
    end
    n
  end
end

def p27
  r, mr, ma, mb = 0,0,0
  Prime.each(1000) do |b|
    Prime.each(1001+b) do |a|
      r = a.nprimos(b)
      print a," ",b," ",r," ",mr,?\n
      sleep 0.0001
      if r > mr then ma, mb, mr = a, b, r
      end
      r = (-a).nprimos(b)
      print -a," ",b," ",r," ",mr,?\n
      sleep 0.0001
      if r > mr then ma, mb, mr = -a, b, r
      end
    end
  end
  puts "a: #{ma}, b:#{mb}, r:#{mr}"
end
