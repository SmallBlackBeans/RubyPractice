#!/usr/bin/ruby -w
# -*- coding: UTF-8 -*-




# yield 语句 实质就是外传一个闭包，闭包效应
def test
  puts "在test 方法内"
  yield
  puts "你又回到了test 内"
  yield
end


test {puts "你在块内"}


# 实质就是外传一个闭包，闭包效应 例如 success{} failed{}
def mutilTest
  yield 5
  puts "你在方法内"
  yield 100
end

mutilTest {|i| puts "你在块 #{i} 内"}




BEGIN {
  puts "BEGIN 代码块"
}

END {

}
