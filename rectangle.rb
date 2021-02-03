include Math

class Rectangle
  def initialize w, h
    @w = w
    @h = h
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
