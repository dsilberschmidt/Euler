require 'mathn'

class Fixnum
  def sqrt
    (self**0.5).floor
  end
end

num = 600_851_475_143

Prime.each(num.sqrt) {|p| puts p if num % p == 0}
