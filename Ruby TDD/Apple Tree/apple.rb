class Apple
  attr_accessor :age
  def initialize (age, height, count)
    @age = age
    @height = height
    @count = count
  end

  def age
    @age
  end

  def height
    @height
  end

  def count
    @count
  end

  def year_gone_by 
    @age = @age += 1
    # @height = @height * 1.1
    # @count = @count += 2
  end
end