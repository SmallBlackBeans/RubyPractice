#!/usr/bin/ruby -w
# -*- coding:UTF-8 -*-



def call(a = "Ruby", b = 1)
  print "\n" + a + ' ', b, "\n"
end

call "hanxiaocu", 2
call


# 返回值
def test
  i = 100
  j = 200
  k = 300
  return i, j, k
end
var = test
puts  var




#可变参数
def sample (* test)
  puts "参数个数 #{test.length}"
  for i in 0...test.length
    puts "参数值为 #{test[i]}"
  end
end

sample "hanxiaocu", "nihao", "en", "你也好"




#类方法
class Accounts
  def call
    puts "实例方法"
  end
  def Accounts.call
    puts "类方法"
  end
end

Accounts.new.call
Accounts.call


# alias 为方法和变量起别名
alias foo bar
alias $MATCH $&

# undef 取消方法定义