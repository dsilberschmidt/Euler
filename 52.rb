class Integer
  def firma
    self.to_s.chars.sort.join
  end
end

def busqueda
  e=1
  e += 1 while [(2*e).firma,(3*e).firma,(4*e).firma,(5*e).firma,(6*e).firma].uniq.length !=1
  puts "#{e} #{2*e} #{3*e} #{4*e} #{5*e} #{6*e}"
end  
