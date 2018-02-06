#!/usr/bin/ruby -w
# -*- coding: UTF-8 -*-

$LOAD_PATH << '.' #在当前目录中搜索被引用的文件，或者使用require_relative

require '模块Module'

y = Trig.sin(Trig::PI / 4)
puts y




class Decade
  include Week
  no_of_year = 10
  def no_of_months
    puts Week::FIRST_DAY
    number = 10 * 12
    puts number
  end
end


d = Decade.new
d.inline
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year
d.no_of_months