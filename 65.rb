class Integer
  def cf
    s = "2"
    1.upto(self-1) do |x|
      if (x+1)%3 == 0
        s += " + Rational(1,#{2*(x+1)/3}"
      else
        s += " + Rational(1,1"
      end
    end
    1.upto(self-1) do
      s += ')'
    end
    eval(s)
  end
end

def busqueda
  100.cf.numerator.to_s.chars.to_a.inject(0){|a,n| a += n.to_i}
end    
