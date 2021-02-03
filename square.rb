include Math

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

  def diagonal
    diagonal = hypot(@s, @s)
    diagonal.round(2)
  end
end
