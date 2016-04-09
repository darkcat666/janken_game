class MyClass
  def hello(name = '')
    "Hello! #{name}!"
  end
    
  def sum(tmp = '')
    tmp.inject(&:+)
  end
end