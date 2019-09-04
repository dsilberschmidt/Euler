def busqueda(max)
  # solucion de dfg59 en prob 76
  nums = (1..max-1).to_a
  combs = Array.new(max+1){0}
  combs[0] = 1
  nums.each do |num|
    (num..max).each do |i|
      combs[i]= (combs[i] +  combs[i-num])%30
    end
    if combs[num] == 0 then return(num) end
  end
  combs
end
