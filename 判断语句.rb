#!/usr/bin/ruby -w
# -*- coding:UTF-8 -*-

# if else
x = 2
if x > 5
  puts "xxxx"
elsif x < 10 and x != 8
  puts "hhhh"
else
  puts "xxxxx"
end



# if 修饰符
$debug = 1
print "debug\n" if $debug

# unless conditional为假执行
m = 2
unless m > 1 then
  puts "m 小于1"
else
  puts "m 大于1"
end


# case
$age = 5
case $age
  when 0..2
    puts "婴儿"
  when 3..6
    puts "小孩"
  when 7..12
    puts "child"
  when 13..18
    puts "少年"
  else
    puts "老东西"
end


# while
$i = 0
$num = 5
while $i < $num do
   puts ("再循环中 i = #$i")
  $i += 1
end

# while 修饰符
begin
  puts("再循环中 i = #$i")
  $i += 1
end while $i < 5


# until 只要不达到条件就一直执行 ，就是只要是假就执行
until $i < 5
  puts("再循环中 i = #$i")
  $i += 1
end


# for  each
for i in 0..5
  if i < 4 then
    next
  end
  if i > 2 then
    break
  end
  print(i)
end

(0..5).each do i
  print(i)
end