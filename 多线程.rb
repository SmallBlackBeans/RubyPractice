#!/usr/bin/ruby -w

$KCODE = 'u'




def func1
  i = 0
  while i <= 2
    puts "fun1 at: #{Time.now}"
    sleep(2)
    i = i + 1
  end
end

def func2
  j = 0
  while j <= 2
    puts "func2 at: #{Time.now}"
    sleep(1)
    j = j + 1
  end
end



puts "Start at #{Time.now}"
t1 = Thread.new {
  func1()
}

t2 = Thread.new {
  func2()
}

# Thread.Join 方法来执行线程，这个方法会挂起主线程，直到当前线程执行完毕。
t1.join
t2.join
puts "END"