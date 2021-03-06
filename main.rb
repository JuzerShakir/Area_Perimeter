###### Build on 02 Feb 2021
###### Ruby version ruby 2.7.2p137 or ruby 3.0.0p0 (2020-12-25 revision 95aff21468)
###### areas and perimeter of shapes
#
# makes available all required shapes for calculation
require 'require_all'
require_all 'shapes'

# this function checks if user has entered only numerical input
def inspect_input *args
  # will give list of all the arguments
  args = *args
  # looping through element to check if input has a alphabets
  args.each do | ele |
    if ele.match(/[a-z]/) then abort "Only NUMERICAL input allowed" end
  end
  # if all input are numerical then convert each element to float
  return args.map(&:to_f)
end

# fucntion for user input
# asks what properties to find of that shape
def input
  puts "\nType 'A' to find AREA\nType 'C' to find CIRCUMFERENCE (ONLY FOR CIRCLE)\nType 'D' to find DIAMETER (ONLY FOR CIRCLE)\nType 'P' to find PERIMETER\nType 'D' to find DIAGONAL."
  puts "Type more than 1 chars to find more than 1 values."
  find = gets.chomp.split('').map(&:capitalize)
# this will delete all duplicate elements
  find.uniq!
  puts "\n"
  return find
end

# function for displaying output
def output
  # output specific for circle shape
  def circle c, find
    find.each do | char |
      if char == "C"
        puts "Circumference is: #{c.circumference}"
      elsif char == "A"
        puts "Area is: #{c.area}"
      elsif char == "D"
        puts "Diameter is: #{c.diameter}"
      else
        next
      end
    end
  end

# output specific for rectangle and square shape
  def quadrilaterals q, find
    find.each do | char |
      if char == "A"
        puts "Area is: #{q.area}"
      elsif char == "P"
        puts "Perimeter is: #{q.perimeter}"
      elsif char == "D"
        puts "Diagonal is: #{q.diagonal}"
      else
        next
      end
    end
  end
# output specific for triangle shape
  def triangle t
    puts "\nArea is: #{t.area}"
  end
end

# we need to know which shape user is interested in
puts "Enter ONLY initials of shapes you want to find: "
puts "'C' for Circle, \t 'S' for Square, \n'T' for Triangle, \t 'R' for Rectangle"
shape = gets.chomp.capitalize
#p shape

# will ask user necessory info of shape user is interested in
case shape
when "C"
  print "\nRadius of circle is: "
  radius = gets.chomp

  # will call required class and give necessory info for calc
  c = Circle.new(inspect_input(radius))
  # calls input function and save user input in a var in a form of float
  find = input
  # returns output
  output.circle(c, find)

when "R"
  print "\nWidth and Height of a rectangle is x,y: "
  width, height = gets.chomp.split(',')

  rect = Rectangle.new(inspect_input(width, height))

  find = input
  output.quadrilaterals(rect, find)

when "S"
  print "\nSide of a square is: "
  side = gets.chomp

  sqr = Square.new(inspect_input(side))

  find = input
  output.quadrilaterals(sqr, find)

when "T"
  print "\nWidth and Height of a triangle is x,y: "
  width, height = gets.chomp.split(',')

  t = Triangle.new(inspect_input(height, width))

  output.triangle(t)

else
  abort "Enter valid initials!"
end

