# areas and perimeter for objects
#
include Math
pi = Math::PI

class Square
  def initialize s
    @s = s
  end

  def area
    area = @s**2
  end

  def perimeter
    perimeter = @s * 4
  end
end

class Rectangle
  def initialize l, b
    @l = l
    @b = b
  end

  def area
    area = @b * @l
  end

  def perimeter
    perimeter = 2 * (@l + @b)
  end
end

class Traingle
  def initialize b, h
    @b = b
    @h = h
  end

  def area
    area = 0.5 * @b * @h
  end
end

def Circle
  def initialize r
    @r = r
  end

  def area
    area = pi * (@r ** 2)
  end

  def circumference
    circumference = 2 * pi * @r
  end
end

puts "Enter required info"
num1, num2 = gets.chomp.split(',').map(&:to_i)

s = Square.new(num1)
puts "Square Area:  #{s.area}"
puts "Square Perimeter:  #{s.perimeter}"

r = Rectangle.new(num1, num2)
puts "Rectangle Area:  #{r.area}"
puts "Rectangle Perimeter:  #{r.perimeter}"


t = Traingle.new(num1, num2)
puts "Traingle Area:  #{t.area}"

c = Circle.new(num1, num2)
puts "Circle Area:  #{c.area}"
puts "Circle Circumference:  #{c.circumference}"
