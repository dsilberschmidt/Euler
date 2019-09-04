a=(2..100).collect do |x|
    (2..100).collect do |y|
      x**y
    end
  end

a=a.flatten.uniq
puts a
puts a.length
