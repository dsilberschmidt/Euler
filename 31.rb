
a = \
(0..1).collect do |w|
  (0..(200-200*w)/100).collect do |x|
    (0..(200-200*w-100*x)/50).collect do |y|
      (0..(200-200*w-100*x-50*y)/20).collect do |z|
        (0..(200-200*w-100*x-50*y-20*z)/10).collect do |a|
          (0..(200-200*w-100*x-50*y-20*z-10*a)/5).collect do |b|
            (0..(200-200*w-100*x-50*y-20*z-10*a-5*b)/2).collect do |c|
              [w,x,y,z,a,b,c,200-200*w-100*x-50*y-20*z-10*a-5*b-2*c].join('.') if 200*w+x*100+y*50+z*20+a*10+b*5+c*2 <= 200
            end
          end
        end
      end
    end
  end
end
puts a.flatten
puts a.flatten.length
