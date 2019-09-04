#!/usr/bin/env ruby1.9.1

require 'prime'
class Integer
  def rad
    self.prime_division.inject(1){|m,p| m *= p[0]}
  end
end

def busqueda
  m= (1..100000).collect{|x| [ x.rad, (p x)]}.sort
  m[9999][1]
end
