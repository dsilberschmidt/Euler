9999.downto(1000) do |n|
  palindrome = (n.to_s + n.to_s.reverse).to_i
  (palindrome ** 0.5).floor.downto(1000) do |x|
    break if palindrome/x > 9999    
    puts "#{palindrome} = #{ x} * #{palindrome/x}" if palindrome%x==0
  end
end

