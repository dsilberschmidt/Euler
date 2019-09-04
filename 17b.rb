require 'english.rb'
t = "" 
(1..1000).each{|x| t << x.to_en}
#puts (t.chars.to_a - [" ","-"]).length
puts (t.chars.to_a - [" ","-"]).length + "and".length * 891
#puts t
