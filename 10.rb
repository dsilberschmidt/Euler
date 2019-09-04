require 'mathn'

puts Prime.each(2000000).inject{|sum,p| sum+p}
