#!/usr/bin/env ruby

class Integer
  def suma_digitos
    self.to_s.chars.inject(0){|m,d| m += d.to_i}
  end
end

def busqueda
  c = 0
  10.upto(1e88888888) do |n|
    s = n.suma_digitos
    break if s == 1
    if e = Math.log(n)/Math.log(s) % 1 < 0.0000000000001 && s**e == n
      c += 1
      print c,' ',n,' ',s,"\n"
    end
  end
end
    
