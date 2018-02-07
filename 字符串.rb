#!/usr/bin/ruby -w
# -*- coding: UTF-8 -*-
#
#
#
#
#字符编码
$KCODE = 'u' #utf-8  a: ASCII e: EUC  n: None 即默认ASCII


#在双引号字符串中我们可以使用 #{} 井号和大括号来计算表达式的值
#类似 JSTL Vue 中的模板语言
firstName = "承海"

lastName = "韩"

puts "你好 #{firstName} #{lastName}"


#等价于双引号 Q后面只要是一个 非字母数字 的 单字节字符 就行
desc = %Q{ 韩承海 你真的好逗 }
desc = %Q. 韩承海 你真的好逗 .
desc = %Q\韩承海 你真的好逗\
desc = %Q^ 韩承海 你真的好逗 ^
desc = %Q\
hahhahahahhahahahhahahahhahaha
fgsfdgs
gsfdgsdf
gsdfgsdf
\

puts desc
#q 等价于 单引号  同上
#



myStr = String.new("THIS IS TEST")
foo = myStr.downcase
puts "#{foo}"


str = "123456"
#index = (str=~"ai")
#puts index


#str.each_key { |substr|
#  print substr
#}
#



#str.gsub(/\d/, 'nihao')

#手机号脱敏
str = "131"
str = str.ljust(7,'*')
print str + "2568"

#新字符串右对齐，左边填充padStr 和上面相反
str.rjust(11, padstr=' ')

"whole".unpack('xax2aX2aX1aX2a')

# xa ---> h
# x2a ---> e
# X2a ---> l
# X1a ---> l
# X2a --->o
# hello