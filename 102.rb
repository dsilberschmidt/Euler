require 'csv'


def busqueda
  a = CSV.read('triangles.txt')
  a.each{|t| print t,' ',(Complex(t[0],t[1]).angle + Complex(t[2],t[3]).angle + Complex(t[4],t[5]).angle)/Math::PI, "\n";sleep 1}
end
