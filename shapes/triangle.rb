include Math

class Triangle
  def initialize list
    @w = list[0]
    @h = list[1]
  end

  def area
    (0.5 * @w * @h).round(1)
  end
end
