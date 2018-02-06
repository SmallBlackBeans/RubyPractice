#!/usr/bin/ruby -w
# -*- coding: UTF-8 -*-



=begin
  模块提供了一个命名空间和避免名字冲突。
  模块实现了 mixin 装置。
=end



module Trig
  PI = 3.14
  def Trig.sin(x)
    # ..
    print 'haha'
  end
  def Trig.cos(x)
    # ..
  end
end


module Moral
  VERY_BAD = 0
  BAD = 1
  def Moral.sin(badness)
    #...
  end
end



module Week
  FIRST_DAY = "Sunday"
  def Week.weeks_in_month
    puts "you have four week in a  month"
  end
  def Week.weeks_in_year
    puts "you have 52 week in a year"
  end
  def inline
  end
end


