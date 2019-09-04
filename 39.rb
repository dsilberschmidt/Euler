h2=Hash.new([])
(3..1000).each do |n|
  (1..n-2).each do |l1|
    (1..n-l1-1).each do |l2|
      l3 = n-l1-l2
      x,y,z = [l1,l2,l3].sort
      if l3**2 == l1**2+l2**2 
        then h2[n] = (h2[n]+[[x,y,z]]).uniq
             puts
             puts "#{n}"
             puts
             puts " #{h2[n]}"
      end
    end
  end
end

puts h2.max_by{|i| i.value.length}
