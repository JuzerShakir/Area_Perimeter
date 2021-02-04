include Math

class Circle
  def initialize list
    @r = list[0]
  end

  def area
    (PI * @r ** 2).round(2)
  end

  def circumference
    (2 * PI * @r).round(2)
  end

  def diameter
    (2 * @r).round(1)
  end
end
