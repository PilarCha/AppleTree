class Apple
  attr_accessor :age
  attr_reader :height, :apple_count
  def initialize
    @height=50
    @age=0
    @apple_count=0
  end
  def year_gone_by
    @age+=1
    @height+=@height*0.10
    @apple_count+=2 if @age > 3 && @age <=10
    self
  end
  def pick_apples
    @apple_count=0
  end
end


puts Apple.new.height
