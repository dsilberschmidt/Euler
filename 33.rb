def busqueda
  resultado=[]
  (10..99).each do |a|
    (10..99).each do |b|
      resultado << [a,b] if b.to_s[1].to_i != 0 && Rational(a,b) == Rational(a.to_s[0].to_i,b.to_s[1].to_i)
    end
  end
  p resultado
end
