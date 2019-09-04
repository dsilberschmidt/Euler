f= File.read('cipher1.txt').chomp

f.split(/,/).each_slice(3).collect{|t| [ (t[0].to_i^103).chr,(t[1].to_i^111).chr, (t[2].to_i^100).chr]}
f.split(/,/).each_slice(3).inject(0){|m,t| m+=(t[0].to_i^103)+(t[1].to_i^111)+ (t[2].to_i^100)}-211
