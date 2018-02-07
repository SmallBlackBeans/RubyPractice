#!/usr/bin/ruby -w
# -*- coding: UTF-8 -*-


names = Array.new


names = Array.new(20)


puts names.size
puts names.length
names = Array.new(4, "mac")

puts "#{names}"


names = Array.new(10) {|e| e = e * 2}
puts "#{names}"


nums = Array.[](1, 2, 3, 4, 5)
nums = Array[1, 2, 3, 4, 5]



digits = Array(0..9)
puts "#{digits}"

num = digits.at(6)

digits & nums #取交集返回，没有重复


digits | nums # 并集

nums << 10 << 11 << 12 << 13 # 添加数据到末尾


nums.map! { |element|
    element * 2
}

puts "#{nums}"


nums.compact #移除 nil

nums.delete(100)
obj = nums.delete_at(3)
if obj == nil
    puts "未找到"
else
    puts "删除成功"
end


nums.each { |e|
  puts e
}


puts nums.join(",")
str = "2,4,6,10,20,22,24,26,11"
split = str.split(",")
puts split

#输出奇数
puts nums.reject { |e|
  e % 2 == 0
}

nums << 3 << 5 << 7 << 9

# 相当于过滤  过滤掉偶数
nums.reject! { |e|
  e % 2 == 0
}

puts "reject! #{nums}"

select = nums.select { |e|
  e % 2 == 0
}

puts "select #{select}"
puts nums.reverse_each { |e|
  #倒序变量
}

nums.rindex(11) #最后一个等于11的值 可以用来做一些剔除操作，只取最新值



#升序
nums.sort! { |a,b|
   a <=> b
}
puts "sort #{nums}"

#降序
nums.sort! { |a,b|
  b <=> a
}

puts "sort #{nums}"

#去重
nums.uniq