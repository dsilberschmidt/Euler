def busqueda
  c = 0
  1.upto(999) do |n|
    fraccion = 1 + Rational(1,1.upto(n).inject(1){|m,x| if x==1 then 2+Rational(1,2) else 2+ Rational(1,m) end})
    #sleep 3
    #print fraccion.numerator,' ',fraccion.denominator,"\n"
    if fraccion.numerator.to_s.length > fraccion.denominator.to_s.length
      c+=1
      puts 
      puts n
      puts 
      puts fraccion
      puts '--------------------------------------------------------'
    end
  end
  c
end
