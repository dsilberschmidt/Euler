class Integer
  def factorial
    if self == 0
      then 1
      else  (1..self).inject(:*)
    end
  end
end


def nfact
  (0..9999999).each{|n| puts n if n == (n.to_s.chars.inject(0){|sum,c| sum += c.to_i.factorial})}
end


#"123".to_s.chars.inject(0){|sum,c|sum+=c.to_i.factorial}
