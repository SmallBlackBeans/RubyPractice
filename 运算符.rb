#!/usr/bin/ruby -w
# -*- coding: UTF-8 -*-
#大多数运算符实际上是方法调用
#
#
#




1 == 1.0 # true
1.eql?(1.0) # false

a = 10
b = 2
a ** b #10 ^ 2 = 100



m, n, l = 10, 20, 30



#交换
m, n = n, m
puts m, n



# 范围运算符

1..5 #1 2 3 4 5
1...5 # 1, 2, 3, 4




# 如果 variable 已经初始化，则为 True
foo = 42
defined? foo    # => "local-variable"
defined? $_     # => "global-variable"
defined? bar    # => nil（未定义）

# 如果方法已经定义，则为 True
defined? puts        # => "method"
defined? puts(bar)   # => nil（在这里 bar 未定义）
defined? unpack      # => nil（在这里未定义）

# 如果存在可被 super 用户调用的方法，则为 True
defined? super     # => "super"（如果可被调用）  => nil（如果不可被调用）


# 如果已传递代码块，则为 True
defined? yield    # => "yield"（如果已传递块）
defined? yield    # => nil（如果未传递块）


# 点运算符 "." 和双冒号运算符 "::"

MR_COUNT = 0
module Foo
  MR_COUNT = 0
  ::MR_COUNT = 1 # 设置全局计数为1
  MR_COUNT = 2   #设置局部计数为2
end

puts MR_COUNT #全局变量
puts Foo::MR_COUNT #局部变量访问



CONST = 'out there'
class Inside_one
  CONST = proc { 'in there' }
  def where_is_my_CONST
     ::CONST + 'inside one'
  end
end

class Inside_two
  CONST = 'inside two'
  def where_is_my_CONST
    CONST
  end
end

puts Inside_one.new.where_is_my_CONST
puts Inside_two.new.where_is_my_CONST
puts Object::CONST + Inside_two::CONST
puts Inside_two::CONST + CONST
puts Inside_one::CONST
puts Inside_one::CONST.call + Inside_two::CONST

<<RESULT
  out thereinside one
  inside two
  out thereinside two
  inside twoout there
  #<Proc:0x007fe00291edf0@/Users/hanchenghai/Desktop/Practice/RubyPractice/运算符.rb:74>
  in thereinside two
RESULT

=begin
多行注释哟
哈哈
哈哈哈哈哈
=end








