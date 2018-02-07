#!/usr/bin/ruby -w
# -*- coding: UTF-8 -*-
#


time1 = Time.new


puts "当前时间：" + time1.inspect


time2 = Time.now



# Time组件
puts String(time1.year) + "年"
puts String(time1.month) +  "月"
puts String(time1.day) + "日"
puts "周" + String(time1.wday)
puts "今年第" + String(time1.yday) + "天"
puts String(time1.hour) + "点"
puts String(time1.min) + "分"
puts String(time1.sec) + "秒"
puts "微秒" + time1.usec.inspect
puts "时区" + time1.zone.inspect


# 函数

Time.local(2018, 2, 7, 12, 00)

Time.utc(2018, 2, 7, 12, 00)

Time.gm(2018, 2, 7, 12, 00)

values = time1.to_a
# [sec,min,hour,day,month,year,wday,yday,isdst,zone]
p values

p Time.utc(*values)


#格式化日期
p time1.strftime("%Y-%m-%d %H:%M:%S %a %B")