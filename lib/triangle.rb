class Triangle
  # write code here
  attr_accessor :length, :height, :hypotenuse

  def initialize(length, height, hypotenuse)
    @length = length
    @height = height
    @hypotenuse = hypotenuse

  end

  def kind
      if @length <= 0 ||  @height <= 0 || @hypotenuse <= 0
        raise TriangleError
      end 

      if @length + @height <= @hypotenuse  || @length + @hypotenuse <= @height ||  @height + @hypotenuse <= @length
        raise TriangleError
      end 

      return :equilateral if @length == @height && @height == @hypotenuse
      return :isosceles   if @length == @height || @length == @hypotenuse ||  @height == @hypotenuse
      return :scalene     if @length != @height && @length != @hypotenuse &&  @height != @hypotenuse 

    end
 
 class TriangleError < StandardError
  end
end
