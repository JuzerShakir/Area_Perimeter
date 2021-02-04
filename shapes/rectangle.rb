include Math

class Rectangle
  def initialize list
    @w = list[0]
    @h = list[1]
  end

  def area
    area = @h * @w
  end

  def perimeter
    perimeter = 2 * (@w + @h)
  end

  def diagonal
    diagonal = hypot(@w, @h)
    diagonal.round(2)
  end
end
