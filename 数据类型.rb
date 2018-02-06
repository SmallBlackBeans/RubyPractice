

# 整形

123                  # Fixnum 十进制
1_234                # Fixnum 带有下划线的十进制
-500                 # 负的 Fixnum
0377                 # 八进制
0xff                 # 十六进制
0b1011               # 二进制
"a".ord              # "a" 的字符编码
?\n                  # 换行符（0x0a）的编码
12345678901234567890 # 大数  Bignum 类型。


#puts print 都是向控制台打印字符，其中puts带回车换行符


=begin
这是注释，称作：嵌入式文档注释
类似C#中的/**/
=end


#指数算术
puts 2**(1/4)#1与4的商为0，然后2的0次方为1
puts 16**(1/4.0)#1与4.0的商为0.25（四分之一），然后开四次方根

# 表达式 替换任意 Ruby 表达式的值为一个字符串
puts "相乘 : #{24*60*60}";

name="Ruby"
puts name
puts "#{name+",ok"}"




# 数组
ary = [ "fred", 10, 3.14, "This is a string", "last element", ]
ary.each do |i|
  puts i
end


# 哈希类型 及我们常见的字典 map
hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
  print key ," is ", value, "\n"
end

# 范围类型
# 范围 (1..5) 意味着它包含值 1, 2, 3, 4, 5，范围 (1...5) 意味着它包含值 1, 2, 3, 4

(10..15).each do |n|
  print n, ' '
end