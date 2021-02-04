# areas and perimeter for objects
#
# makes available all required shapes for calculation
require 'require_all'
require_all 'objects'

# fucntion for user input
# asks what variables to find of that shape
def input
  puts "\nType 'A' to find AREA\nType 'C' to find CIRCUMFERENCE\nType 'D' to find DIAMETER\nType 'P' to find PERIMETER\nType 'D' to find DIAGONAL."
  puts "Type more than 1 chars to find more than 1 values."
  find = gets.chomp.split('').map(&:upcase)
  #p find
  puts "\n"
  return find
end

# function for displaying output
def output
  # output specific for circle shape
  def circle
    $find.each do | char |
      if char == "C"
        puts "Circumference is: #{$o.circumference}"
      elsif char == "A"
        puts "Area is: #{$o.area}"
      elsif char == "D"
        puts "Diameter is: #{$o.diameter}"
      else
        next
      end
    end
  end

# output specific for rectangle and square shape
  def quadrilaterals find
    find.each do | char |
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
# output specific for triangle shape
  def triangle
    puts "\nArea is: #{$o.area}"
  end
end

# we need to know which shape user is interested in
puts "Enter ONLY Initials of Shapes you want to find: "
puts "'C' for Circle, \t 'S' for Square, \n'T' for Triangle, \t 'R' for Rectangle"
shape = gets.chomp.capitalize
#p shape

# will ask user necessory info of shape user is interested in
case shape
when "C"
  print "\nRadius of circle is: "
  radius = gets.chomp.to_f

  # will call required class and give necessory info for calc
  $o = Circle.new(radius)
  # calls input function
  input
  # returns output
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

  find = input
  output.quadrilaterals(find)

when "T"
  print "\nHeight of a triangle is: "
  height = gets.chomp.to_f
  print "\nWidth of a triangle is: "
  width = gets.chomp.to_f

  $o = Triangle.new(height, width)

  output.triangle
end

