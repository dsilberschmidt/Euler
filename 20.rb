(1..100).inject{|prod,x| prod*x}.to_s.each_byte.inject(0){|sum,y|sum+y.chr.to_i}
