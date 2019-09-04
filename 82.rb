require 'csv'

$a =  [	[131,	673,	234,	103,	18 ],
    	[201,	96,	342,	965,	150],
	[630,	803,	746,	422,	111],
	[537,	699,	497,	121,	956],
	[805,	732,	524,	37,	331]]


$b =  [ [131,   673,    234,    103,    18 ],
        [201,   96,     342,    965,    150],
        [630,   803,    746,    422,    111],
        [537,   699,    497,    121,    956],
        [805,   732,    524,    37,     331]]


$a = CSV.read('matrix.txt')
$a = $a.collect{|f| f.collect{|c| c.to_i}}

$b = CSV.read('matrix.txt')
$b = $b.collect{|f| f.collect{|c| c.to_i}}


def busqueda
  cand = Array.new(0)
  1.upto(79) do |c|
    0.upto(79) do |f|
      0.upto(79) do |o|
        #print f,' ',c,' ',o,"\n"
        #cand[o] = ([f,o].min..[f,o].max).inject(0){|m,v| m += $a[v][c-1]}
        cand[o] =  $b[o][c-1] + ([f,o].min..[f,o].max).inject(0){|m,v| m +=  $a[v][c-1]} -  $a[o][c-1]
      end 
      #p cand
      #p $b
      #sleep 5 
      $b[f][c] += cand.min
      #p $b
    end
  end
  (0..($b.length-1)).inject(9e99){|m,v| m= [m,$b[v][$b.length-1]].min} 
  #$b
end
