#!/usr/bin/ruby -w
# -*- coding: UTF-8 -*-


=begin
Ruby 没有真正实现多重继承机制，而是采用成为mixin技术作为替代品。
将模块include到类定义中，模块中的方法就mix进了类中。
=end


module A
  def a1
  end
  def a2
  end
end

module B
  def b1
  end
  def b2
  end
end

class Sample
  include A, B
  def s1
  end
end

sample = Sample.new
sample.a1
sample.b1
sample.s1