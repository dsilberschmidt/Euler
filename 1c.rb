
def busqueda
  e1 = [3, 2, 1, 3, 1, 2, 3].cycle
  s ,n = 0, e1.next 
  (s += n ; n += e1.next) while n < 1000
  s
end


