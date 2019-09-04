## progama 1c en ruby
##def busqueda
##  e1 = [3, 2, 1, 3, 1, 2, 3].cycle
##  s ,n = 0, e1.next 
##  (s += n ; n += e1.next) while n < 1000
##  s
##end



def busqueda():
  s, i , n = 0 , -1 , 0
  e1 = [3, 2, 1, 3, 1, 2, 3]
  while n < 1000:
    i = (i + 1)% 7
    n += e1[i]
    s+= n
  return (s - n);
  

