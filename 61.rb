class Integer
  def octogonal
    self*(3*self-2)
  end
end

o = (1..100).collect{|n| if (o = n.octogonal).to_s.length==4 then o end}.compact
