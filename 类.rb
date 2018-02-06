$gloab_variable = 1 #全局变量
class Customer

  COSTANT = 100 # 常量

  @@no_of_customers=0 #类变量

  def initialize(id, name, addr)
    _jubu = name #局部变量

    @cust_id = id #实例变量
    @cust_name = name
    @cust_addr = addr
  end

  def display_details()
    #通过在变量或常量前面放置 # 字符，来访问任何变量或常量的值。
    puts "Customer id #@cust_id"
    puts "Customer name #@cust_name"
    puts "Customer addr #@cust_addr"
  end

  def total_no_of_customers()
    @@no_of_customers += 1
  end


  def function
    # code
    puts "hello hanxiaocu"
  end


  # 伪变量
  self
  true
  nil
  __FILE__
  __LINE__
end


cust2 = Customer.new(1, 'hanchenghai', 'shanghai')



class Sample
  def hello
    puts "hello ruby"
  end
end

object = Sample.new
object.hello

