#!/usr/bin/ruby -w

arr = [1, 2, 3, 4, 5]
arr.each do |i|
  p i
end


b = Array.new
b = arr.collect { |x|
  x * 10
}

p b
