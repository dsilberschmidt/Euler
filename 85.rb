def busqueda
  r =[0,0,0,999999999]
  max = 2*10**6
  1.upto(max**Rational(1,2)) do |n|
    mt= max*2/n/(n+1)
    a =Rational(1,2)
    b =Rational(1,2)
    c = -mt
    discr = b**2-4*a*c
    print 'n: ',n,'   ',a,' ',b,' ',c,' ',discr
    if discr > 0
      m1= -b+Math.sqrt(discr)
      m1a = m1.ceil
      m1b = m1.floor
      cuad_a = n*(n+1)/2 * m1a*(m1a+1)/2
      cuad_b = n*(n+1)/2 * m1b*(m1b+1)/2
      if (da= (max -cuad_a).abs) < (db = (max -cuad_b).abs )
        cuad, m1, d = cuad_a, m1a, da
      else
        cuad, m1, d = cuad_b, m1b, db
      end
      print ' m1: ',m1,' ',cuad,' ',d,"\n"
      
      if d < r[3] 
        r[0],r[1],r[2],r[3],r[4] = cuad, n,m1, d,n*m1
        p r
      end
      #sleep 1
    end
  end
  r
end
    
