require 'csv'

t=CSV.read('/home/cactussediento/Desktop/triangle.txt',col_sep: ' ')

(t.length-2).downto(0).each do |f|
  (0..t[f].length).each do |i|
    t[f][i]=t[f][i].to_i + [t[f+1][i].to_i,t[f+1][i+1].to_i].max
  end
end

puts t[0][0]


