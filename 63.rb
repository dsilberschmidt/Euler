c=0
1.upto(1000) do |n|
  puts 'n: ',n
  x=1
  p= x**n
  until p.to_s.length > n do
    (print ' c:', (c = c + 1),' ') if (p p).to_s.length==n
    x+=1
    p = x**n
  end
end
puts c

