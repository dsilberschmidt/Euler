996.downto(23){|n|(1..n-1).each{|x| puts "#{n} #{x}" if (Rational(('9'*x).to_i)/n)%1==0}}
