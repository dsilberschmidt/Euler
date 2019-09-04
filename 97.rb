class Integer
  def m2
    (self*2) % (10**10)
  end
end

(28433*1.upto(7830457).inject(1){|r,n| r =r.m2}+1) % (10**10)
