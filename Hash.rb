#!/usr/bin/ruby -w
# -*- coding: UTF-8 -*-



months = Hash.new

#默认值
months = Hash.new "month"
months = Hash.new("month")



puts "默认值---#{months[0]}"

H = Hash["a" => 100, "b" => 200]

puts "#{H['a']}"
puts "#{H['b']}"


#键可以是任何的对象
hash = { [1,"jan"] => "January"}

#全局变量
$, = ","
months = {"1" => "January", "2" => "February"}

keys = months.keys
puts "#{keys}"


select = months.select { |k, v|
 true
}


puts "#{months.to_a}"
puts "#{months.to_s}"


hash = {"1" => 100, "1" => 200, "2" => 300}
puts "#{hash.values_at"1"}"