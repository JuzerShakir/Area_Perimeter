# areas and perimeter for objects
#
# makes available all required shapes for calculation
require 'require_all'
require_all 'objects'

def input
  puts "\nType 'A' to find AREA\nType 'C' to find CIRCUMFERENCE\nType 'R' to find DIAMETER\nType 'P' to find PERIMETER\nType 'D' to find DIAGONAL."
  puts "Type more than 1 chars to find more than 1 values."
  $find = gets.chomp.split('').map(&:upcase)
  #p find
  puts "\n"
end

def output
  def circle
    $find.each do | char |
      if char == "C"
        puts "Circumference is: #{$o.circumference}"
      elsif char == "A"
        puts "Area is: #{$o.area}"
      elsif char == "R"
        puts "Diameter is: #{$o.diameter}"
      else
        next
      end
    end
  end

  def quadrilaterals
    $find.each do | char |
      if char == "A"
        puts "Area is: #{$o.area}"
      elsif char == "P"
        puts "Perimeter is: #{$o.perimeter}"
      elsif char == "D"
        puts "Diagonal is: #{$o.diagonal}"
      else
        next
      end
    end
  end

  def triangle
    puts "\nArea is: #{$o.area}"
  end
end

puts "Enter ONLY Initials of Shapes you want to find: "
puts "'C' for Circle, \t 'S' for Square, \n'T' for Triangle, \t 'R' for Rectangle"
object = gets.chomp.capitalize
#p object

case object
when "C"
  print "\nRadius of circle is: "
  radius = gets.chomp.to_f

  $o = Circle.new(radius)

  input
  output.circle

when "R"
  print "\nWidth of a rectangle is: "
  width = gets.chomp.to_f
  print "\nHeight of a rectangle is: "
  height = gets.chomp.to_f

  $o = Rectangle.new(width, height)

  input
  output.quadrilaterals

when "S"
  print "\nSide of a square is: "
  side = gets.chomp.to_f

  $o = Square.new(side)

  input
  output.quadrilaterals

when "T"
  print "\nHeight of a triangle is: "
  height = gets.chomp.to_f
  print "\nWidth of a triangle is: "
  width = gets.chomp.to_f

  $o = Triangle.new(height, width)

  output.triangle
end

