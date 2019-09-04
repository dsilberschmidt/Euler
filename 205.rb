
def busqueda
  r = 0
  p = [1,2,3,4]
  c = [1,2,3,4,5,6]

  mp = p.product(p).product(p).product(p).product(p).product(p).product(p).product(p).product(p)
  mc = c.product(c).product(c).product(c).product(c).product(c)

  np = mp.collect{|m| m.flatten.inject(:+)}
  nc = mc.collect{|m| m.flatten.inject(:+)}

  hp = Hash.new(0)
  hc = Hash.new(0)
  hbc= Hash.new(0)

  np.each{|n| hp[n] += 1}
  nc.each{|n| hc[n] += 1}

  hc.each{|k,v| print k,' ',v,"\n"; (0..np.max).each{|ki|  hbc[ki] += v if ki > k }}
  
  
  hp.each{|k,v| r += Rational(v,np.length) * Rational(hbc[k],nc.length); print k,' ',v,' ',np.length,' ',hbc[k],' ',nc.length,' ',r.to_f,"\n"}
  [hp,hc, hbc,np.length,nc.length,r.to_f.round(7)]
end
