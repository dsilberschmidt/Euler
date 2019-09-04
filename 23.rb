
abundant=(2..29000).collect{|x| x if x.divisores.inject(:+) > x}-[nil]



#r=Hash.new(

#(13..200).each{|y| (0..((abundant.collect{|n| n if n < y }-[nil ]).max)).each{|i| (puts "#{y}: #{abundant[i]} + #{y-abundant[i]}";r<<y;break) if abundant.include?(y-abundant[i])}}

r=Hash.new
(1..30000).each{|x| r[x]=true}

(0..(abundant.length-1)).each{|n| (n..abundant.length-1).each{|s|r[abundant[n]+abundant[s]]=false}}

a=r.to_a

sum=0
(0..a.length-1).each{|x|sum+=a[x][0] if a[x][1]==true}


sum
