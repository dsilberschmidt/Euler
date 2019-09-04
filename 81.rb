require 'csv'

a = CSV.read('matrix.txt')

class Array
  def diagonalizar
    r = Array.new
    0.upto(2*self.length - 2 ) do |d|
      vd = []
      d.downto(0) do |i|
        vd << self[i][d-i] if ((d-i) < self.length) && (i < self.length)
      end
       r << vd
    end
    p r
  end
end


def busqueda
  a = CSV.read('matrix.txt')
  t = a.diagonalizar
  #p t[0]
  #p t[t.length-2]
  #p t[t.length-2].length
  #p t[t.length/2]
  #p t[t.length/2].length
  #p t[(t.length/2)-1]
  #p t[(t.length/2)-1].length

  (t.length-2).downto(t.length/2).each do |f|
    print 'd: ',f,"\n"
    p t[f]
    (0..t[f].length-1).each do |i|
      t[f][i]=t[f][i].to_i + (p [ i <= t[f+1].length - 1 ? t[f+1][i].to_i : 12000000 , (p (i - 1 >= 0 ?  t[f+1][i-1].to_i : 10000000000)) ].min)
      print 'i: ',i,' :',t[f+1][i],' ',t[f+1][i-1],' .'
    end
    puts
    p t[f]
    #sleep 1
  end
  ((t.length/2)-1).downto(0).each do |f|
    p t[f]
    (0..t[f].length-1).each do |i|
      t[f][i]=t[f][i].to_i + [t[f+1][i].to_i,t[f+1][i+1].to_i].min
    end
    p t[f]
    sleep 1
  end

  puts t[0][0]
end

