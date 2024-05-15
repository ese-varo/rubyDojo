# get areas
class Circle
  def initialize(radius)
    @radius = radius
  end

  def get_area
    (Math::PI * (@radius**2)).ceil
  end
end

class Rectangle
  def initialize(width, height)
    @width = width
    @height = height
  end

  def get_area
    (@width * @height).ceil
  end
end

class Square
  attr_reader :width
  def initialize(width)
    @width = width
  end

  def get_area
    (self.width**2).ceil
  end
end

circle1 = Circle.new(5.0)
rectangle1 = Rectangle.new(3.0, 4.0)
circle2 = Circle.new(2.0)
square = Square.new(3.3)
rectangle2 = Rectangle.new(5.0, 7.5)
# puts circle1.get_area, rectangle1.get_area, circle2.get_area, square.get_area, rectangle2.get_area
puts square.get_area
