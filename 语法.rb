
#!/usr/bin/ruby -w
# -*- coding: UTF-8 -*-

# 我是注释，请忽略我

=begin
这是注释。
这也是注释。
这也是注释。
这还是注释。
=end

print <<EOF
    这是第一种方式创建here document 。
    多行字符串。
EOF

print <<"EOF";                # 与上面相同
    这是第二种方式创建here document 。
    多行字符串。
EOF

print <<`EOC`                 # 执行命令
    echo hi there hanxiaocu
    echo lo there
EOC

print <<"foo", <<"bar"          # 您可以把它们进行堆叠
    I said foo.
foo
    I said bar.
bar


BEGIN {
  #code 会在程序执行前被调用
  puts "初始化 Ruby 程序"
}

END {
  puts "停止 Ruby 程序"
}




# redo

# retry
begin
  #code throw error
rescue
  #处理 error
  retry # 重新begin
end

for i in 1..5
  retry if  i > 2
  puts "局部变量的值为 #{i}" #无限 1 2 1 2 1 2 ...
end