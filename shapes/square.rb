include Math

class Square
  def initialize list
    @s = list[0]
  end

  def area
    (@s**2).round(1)
  end

  def perimeter
    (@s * 4).round(1)
  end

  def diagonal
    diagonal = hypot(@s, @s)
    diagonal.round(2)
  end
end
