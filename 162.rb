class Integer
  def fact
    if self == 0 then 1
    else (1..self).inject(:*)
    end
  end
  def choose(n)
    self.fact / n.fact/(self-n).fact
  end
end
