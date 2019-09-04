 a=%w(1 2 3 4 5 6 7).permutation(7).collect{|a| a.join.to_i}.find_all{|x|x.prime?}.max
puts a
