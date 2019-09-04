require 'date'

class Date
  def succ
    self.>>(1)
  end
end

i = Date.new(1901,1,1)
f = Date.new(2000,12,31)

#puts i.wday
#puts i.succ.wday

#(i..f).each{|x| puts "#{x} #{x.wday}"}

r= (i..f).find_all{|d| d.wday==0}

puts r
puts r.length


