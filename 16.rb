p (2**1000).to_s.scan(/./).inject(0){|sum,d| sum + d.to_i}
