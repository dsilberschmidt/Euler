require 'prime'

(3..a.length-1).each{|p| puts p if (t=a[3..p].inject(:+)).prime? && t<1000000}
