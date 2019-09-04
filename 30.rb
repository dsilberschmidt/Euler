t=0
(0..1000000).each{ |n|
   k= n.to_s.chars.inject(0){|sum,o|sum+=o.to_i**5}
   (puts "#{n} #{k}";t+=n) if n== k 
}
puts t
