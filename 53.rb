c=0
class Integer #from http://bluebones.net/2007/09/combinatorics-in-ruby/
  def choose(m)
    return (self.fact / (m.fact * (self - m).fact))
  end

  def fact
    (2..self).inject(1) { |f, n| f * n }
  end
end

(1..100).each{|n| (1..n).each {|r| c+=1 if n.choose(r)>1000000}}

puts c
