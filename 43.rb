require 'prime'

class Integer
 def prop?
   s=self.to_s
   s[1..3].to_i % 2 == 0 &&
   s[2..4].to_i % 3 == 0 &&
   s[3..5].to_i % 5 == 0 &&
   s[4..6].to_i % 7 == 0 &&
   s[5..7].to_i % 11 == 0 &&
   s[6..8].to_i % 13 == 0 &&
   s[7..9].to_i % 17 == 0  
 end
end



a=%w(1 2 3 4 5 6 7 8 9 0).permutation(10).collect{|a| a.join.to_i}.find_all{|x|x.prop?}.inject(:+)
