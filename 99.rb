a= CSV.read('base_exp.txt')

puts  a.index(
a.max_by{|p| p[1].to_f*Math.log(p[0].to_f)}
) +1
