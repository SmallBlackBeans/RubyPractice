#!/usr/bin/ruby
# -*- coding: UTF-8 -*-



begin
  file = open("/unexist_file")
  if file
    puts "File is exist"
  end
rescue
  file = STDIN
  fname = "existant_file"
  #retry #从新开始
else
  puts "no errors!"
ensure
  #不管有没有异常，进入该代码块
  #比如文件的关闭，数据库的断开
end
print file, "==", STDIN, "\n"

# $! #表示异常信息
# $@ #表示异常出现的代码位置

# 抛出异常 raise

begin
  puts 'I am before the raise'
  raise 'An error has occurred'
  puts "I am after the raise"
rescue Exception => e
  puts "i am rescued"
  puts e.message
  puts e.backtrace.inspect
end

puts 'i am after the begin block'



# catch throw
def promptAndGet(prompt)
  print prompt
  res = readlines.chomp
  throw :quitRequested if res == "!"
  return res
end

catch :quitRequested do
  name = promptAndGet("name:")
  age = promptAndGet("age:")
  sex = promptAndGet("sex:")
  #处理
end
promptAndGet("name:")


# 异常
class FileSaveError < StandardError
  attr_reader :reason
  def initialize(reason)
    @reason = reason #实例变量
  end
end

File.open("path", "w") do |file|
  begin
    #写入数据
  rescue
    #发生错误
    raise FileSaveError.new($!)
  end
end




