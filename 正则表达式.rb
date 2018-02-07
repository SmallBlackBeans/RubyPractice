#!/usr/bin/ruby
#
#




line1 = "Cats are smarter than dog"
line2 = "Dogs also like meat"


if ( line1 =~ /Cats(.*)/ )
  puts "Line1 contains Cats"
end
if ( line2 =~ /Cats(.*)/ )
  puts "Line2 contains Dogs"
end


#匹配单个反斜杠 不转义
%r|/|


%r[</(.*)>]i



/([Rr]uby(,)?)+/

#反向引用
/(Hh)chenghai&\1chenglin/ # Hanchenghai&Hanchenglin    hanchenghai&hanchenglin

/ruby(!+|\?)/
/(["'])(?:(?!\1).)*\1/
#第一个分组 匹配" 或 ' 记录分组
#(?!\1) 排除第一分组的其他所有字符 即除了 " 或 ' 外的其他字符都可以
#(?:reg) 获取符合reg的字符 分组但不记录分组文本即为了最后的\1能够匹配到第一个分组
#(?:reg)* 任意多个字符
#\1 是和第一个分组对应的字符 " 或 '
# "nihao123%##%#%#"

/ruby(?:!+|\?)/  #ruby!!!  ruby?
/Ruby(?=!)/  #如果 "Ruby" 后跟着一个感叹号，则匹配 "Ruby"
/Ruby(?!!)/	 #如果 "Ruby" 后没有跟着一个感叹号，则匹配 "Ruby"



#搜索 替换
phone = "131-6206-2568 #这是注释"

#phone.sub!(/#.*$/,"")
puts "电话：#{phone}"
#phone = phone.gsub!(/\D/,"")
#puts "电话：#{phone}"
phone = phone.gsub!(/[^-\d]/,"")
puts "电话：#{phone}"


text = "rails 是 rails , Ruby on Rails 是非常好的Ruby 框架"

text.gsub!(/\brails\b/,"Rails")
puts "#{text}"