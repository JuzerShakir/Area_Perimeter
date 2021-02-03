include Math

class Circle
  def initialize r
    @r = r
  end

  def area
    area = PI * @r ** 2
    area.round(2)
  end

  def circumference
    circumference = 2 * PI * @r
    circumference.round(2)
  end

  def diameter
    diameter = 2 * @r
  end
end
