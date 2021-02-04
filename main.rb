# areas and perimeter for objects
#

require 'require_all'
require_all 'objects'

puts "Enter ONLY Initials of Calculations you want to find: "
puts "'C' for Circle, \t 'S' for Square, \n'T' for Triangle, \t 'R' for Rectangle"
initial = gets.chomp
initial.capitalize!
#p initial

case initial
when "C"
  print "\nRadius of circle is: "
  radius = gets.chomp.to_f

  c = Circle.new(radius)

  puts "\nTo find Area of a Circle Type 'A'\nType 'C' to find circumference"
  puts "To find BOTH, Type 'AC' or 'CA':"
  find = gets.chomp.split('').map(&:capitalize)
  #p find
  puts "\n"

  find.each do | char |
    if char == "C"
      puts "Circumference of a circle is: #{c.circumference}"
    elsif char == "A"
      puts "Area of a circle: #{c.area}"
    else
      abort "Invalid input #{char}. Re-run program and enter valid input!"
    end
  end

when "R"
  print "\nWidth of a rectangle is: "
  width = gets.chomp.to_f
  print "\nHeight of a rectangle is: "
  height = gets.chomp.to_f

  r = Rectangle.new(width, height)

  puts "\nType 'A' to find Area\nType 'P' to find Perimeter\nType 'D' to find diagonal."
  puts "Type more than 1 chars to find more than 1 values."
  find = gets.chomp.split('').map(&:capitalize)
  #p find
  puts "\n"

  find.each do | char |
    if char == "A"
      puts "\nArea of a Rectangle is: #{r.area}"
    elsif char == "P"
      puts "Perimeter of a rectangle is: #{r.perimeter}"
    elsif char == "D"
      puts "Diagonal of a rectangle is: #{r.diagonal}"
    else
      abort "Invalid input #{char}. Re-run program and enter valid input!"
    end
  end

when "S"
  print "\nSide of a square is: "
  side = gets.chomp.to_f

  s = Square.new(side)

  puts "\nType 'A' to find Area\nType 'P' to find Perimeter\nType 'D' to find diagonal."
  puts "Type more than 1 chars to find more than 1 values."
  find = gets.chomp.split('').map(&:capitalize)
  #p find
  puts "\n"

  find.each do | char |
    if char == "A"
      puts "\nArea of a square is: #{s.area}"
    elsif char == "P"
      puts "Perimeter of a square is: #{s.perimeter}"
    elsif char == "D"
      puts "Diagonal of a square is: #{s.diagonal}"
    else
      abort "Invalid input #{char}. Re-run program and enter valid input!"
    end
  end

when "T"
  print "\nHeight of a triangle is: "
  height = gets.chomp.to_f
  print "\nWidth of a triangle is: "
  width = gets.chomp.to_f

  t = Triangle.new(height, width)

  puts "\nArea of a triangle is: #{t.area}"

end
