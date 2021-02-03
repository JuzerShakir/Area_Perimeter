# areas and perimeter for objects
#

puts "Enter required info"
num1, num2 = gets.chomp.split(',').map(&:to_i)

require_relative 'square'
s = Square.new(num1)
puts "Square Area: #{s.area}"
puts "Square Perimeter: #{s.perimeter}"
puts "Diagonal of a Sqaure: #{s.diagonal}"

require_relative 'rectangle'
r = Rectangle.new(num1, num2)
puts "\nRectangle Area: #{r.area}"
puts "Rectangle Perimeter: #{r.perimeter}"

require_relative 'triangle'
t = Traingle.new(num1, num2)
puts "\nTraingle Area: #{t.area}"

require_relative 'circle'
c = Circle.new(num1)
puts "\nCircle Area: #{c.area}"
puts "Circle Circumference: #{c.circumference}"

