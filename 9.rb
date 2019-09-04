# (999..1).find{|a| (a..1).find{|b| a+b+(a**2+b**2)**0.5 == 1000}}
#(999..1).collect{|a| a.downto(1).find{|b| a+b+(a**2+b**2)**0.5 == 1000}}

for a in 1..999 do
  for b in 1..999 do
    c = (a**2+b**2)**0.5
    if a+b+c == 1000 
      print a,' ',b,' ',c
      print  a*b*c
      puts
    end
  end
end
