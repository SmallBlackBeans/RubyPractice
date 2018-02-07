#!/usr/bin/ruby -w
# -*- coding: UTF-8 -*-

#$KCODE = 'u'



range1 = (1..10).to_a

p "#{range1}"


digits = 0..9


p digits.include?(5)


ret = digits.min
p "最小值：#{ret}"


digits.each do |e|
  p "再循环中：#{e}"
end

while gets
  print if /start/../end/
end


if ((1..10) === 5)
  puts "5 在 (1..10)"
end

if (('a'..'j') === 'c')
  puts "c 在 ('a'..'j')"
end

if (('a'..'j') === 'z')
  puts "z 在 ('a'..'j')"
end

