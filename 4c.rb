99999.downto(10000) do |n|
  palindrome = (n.to_s + n.to_s.reverse).to_i
  (palindrome ** 0.5).floor.downto(10000) do |x|
    break if palindrome/x > 99999    
    puts "#{palindrome} = #{ x} * #{palindrome/x}" if palindrome%x==0
  end
end

