include Math
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

  def diagonal
    diagonal = hypot(@l, @b)
    diagonal.round(2)
  end
end
