class Integer
  def collatz
    c =1 
    n = self
    while n > 1 do
      c+=1
      if n%2 == 0 
        n = n/2
      else
        n = 3*n +1
      end
    end
    c
  end
end

#v=(1..1000000).step(2).inject{|mayor,n| [n.collatz,mayor].max}

puts (1..1000000).step(2).collect{|n| [n,n.collatz]}.max{|par_a,par_b|par_a[1]<=> par_b[1]}
