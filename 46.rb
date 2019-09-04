require 'prime'

n=1
loop do
  n+=2
  next if n.prime?
  p n
  a=(1..Math.sqrt(n/2.0)).collect{|c| n-2*c**2}
  #p a
  a = a.collect{|x| x.prime?}
  #p a
  break if !a.include?(true)
end
puts n 
