puts (3...1000).inject{|sum, x| (x%5==0 || x%3==0) ? (sum + x) :sum}
