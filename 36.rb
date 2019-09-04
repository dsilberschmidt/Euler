def palindromes
  a=[]
  (0..999).each { |x|
    xs = x.to_s
    if xs[0] != 0
    then  a<< (xs + xs.reverse[(xs.length.to_f)/2..-1]).to_i << (xs+xs.reverse).to_i
     end
  } 
  a.sort.uniq
end

a=palindromes
sum=0
a.each{|n|
if  n.to_s(2) == n.to_s(2).reverse  then sum += n;  puts "#{n} #{n.to_s(2)}"
end
}
puts sum
