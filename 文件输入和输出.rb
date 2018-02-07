#!/usr/bin/ruby -w


# puts



<<BEGIN
nihao
BEGIN

BEGIN {
  puts "开始咯"
}

END {
  puts "结束了"
}

#gets
#p "Enter a value"
#val = gets
#p val



# putc
str = "Hello Ruby"
putc str


#print
print "Good hanxiaocu"

#打开和关闭文件
aFile = File.new("input.txt","r+")
#处理
aFile.close


File.open("input.txt", "r+") do |file| {
    # 处理
}
end


=begin

模式	描述
r	只读模式。文件指针被放置在文件的开头。这是默认模式。
r+	读写模式。文件指针被放置在文件的开头。
w	只写模式。如果文件存在，则重写文件。如果文件不存在，则创建一个新文件用于写入。
w+	读写模式。如果文件存在，则重写已存在的文件。如果文件不存在，则创建一个新文件用于读写。
a	只写模式。如果文件存在，则文件指针被放置在文件的末尾。也就是说，文件是追加模式。如果文件不存在，则创建一个新文件用于写入。
a+	读写模式。如果文件存在，则文件指针被放置在文件的末尾。也就是说，文件是追加模式。如果文件不存在，则创建一个新文件用于读写。

=end


#sysread 方法
txt = File.new("input.txt", "r")
if txt
  #content = txt.sysread(20)
  #puts content
else
  p "can't open the file"
end

#syswrite 方法
writeFile = File.new("input.txt", "r+")
if writeFile
  writeFile.syswrite "ABCDEfdfdF"
else
  puts "Unable to open file!"
end


#each_byte 方法
byteFile = File.new("input.txt", "r+")
if byteFile
  byteFile.syswrite "ABCDEF"
  byteFile.rewind
  byteFile.each_byte do |char|
    putc char; putc ?.
  end
else
  puts "Unable to open file"
end

puts

#IO.readlines 方法
linearr = IO.readlines("input.txt")
puts linearr[0]
puts linearr[1]


# IO.foreach 方法
IO.foreach("input.txt") do |block|
  puts block
end


#重命名和删除文件
#File.rename("input.txt", "change.txt")
#File.delete("input.txt")


#文件模式与所有权
<<E
0700	rwx 掩码，针对所有者
0400	r ，针对所有者
0200	w ，针对所有者
0100	x ，针对所有者
0070	rwx 掩码，针对所属组
0040	r ，针对所属组
0020	w ，针对所属组
0010	x ，针对所属组
0007	rwx 掩码，针对其他人
0004	r ，针对其他人
0002	w ，针对其他人
0001	x ，针对其他人
4000	执行时设置用户 ID
2000	执行时设置所属组 ID
1000	保存交换文本，甚至在使用后也会保存
E

file = File.new("input.txt", "w")
file.chmod( 0755 )


#文件查询
File.open("input.txt") if File::exist?("input.txt")
File.file?("input.txt")
File::directory?("/usr/bin/ruby") # => true


File.readable?("input.txt")
File.writable?("input.txt")
File.executable?("input.txt")
File.zero?("input.txt")

File.size?("input.txt")

#file、 directory、 characterSpecial、 blockSpecial、 fifo、 link、 socket 或 unknown
File::ftype("input.txt") # => file

#创建时间
File::ctime("input.txt")
#最后修改时间
File::mtime("input.txt")
#最后访问时间
File::atime("input.txt")



#目录
#Dir.chdir("/usr/bin")
puts Dir.pwd.inspect #当前目录


puts Dir.entries("/usr/bin").join(' ')
Dir.foreach("/usr/bin") do |entry|
  #puts entry
end

puts Dir["/usr/bin/*"]

#创建目录
#Dir.mkdir("newDir", 755)

#删除目录
Dir.delete("newDir")
#等价于
Dir.unlink("newDir")
Dir.rmdir("newDir")



# 创建临时文件和目录
require 'tmpdir'
tempfilename = File.join(Dir.tmpdir, "tingtong")
tempfile = File.new(tempfilename, 'w')
tempfile.puts "This is a temporary file"
tempfile.close
File.delete(tempfilename)

require 'tempfile'
f = Tempfile('tingtong')
f.puts "Hello"
puts f.path
f.close


File.basename("/usr/bin/ruby", "exe") #=> "ruby"



#Dir方法
Dir["foo.*"] #foo.c foo.b foo.abc
DIc["foo.?"]  #foo.c foo.b foo.c

