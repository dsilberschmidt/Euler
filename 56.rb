
def busqueda
  ms = 0
  (0..99).each do |a|
    (0..99).each do |b|
      s = (a**b).to_s.chars.inject(0){|sum,x| sum += x.to_i}
      puts "a: #{a}, b: #{b}, s: #{s}"
      if s > ms then ms = s ; end 
    end
  end
  ms
end
