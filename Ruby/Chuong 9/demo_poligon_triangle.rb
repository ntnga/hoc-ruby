class Polygon
  def initialize(number_of_sides)
    @number_of_sides = number_of_sides
    @sides = Array.new(@number_of_sides, 0)
  end
  def input_sides
    for i in 0..@number_of_sides-1
      puts "Input value for side #{i+1}:"
      side = gets.chomp
      @sides[i] = side.to_i
    end
  end
  
  def to_s
    info = ""
    for i in 0..@number_of_sides-1
      info += "Side #{i+1} : #{@sides[i]} ;"
    end
    info
  end
  
  def tinh_dien_tich
    "Tính diện tích"
  end
  
  def tinh_chu_vi
    "Tính chu vi"
  end
end

class Triangle < Polygon
  def tinh_chu_vi
    @sides[0] + @sides[1] + @sides[2]
  end
  
  def tinh_dien_tich
      p = tinh_chu_vi.to_f/2
      s = Math.sqrt(p*(p-@sides[0]) * (p-@sides[1]) * (p-@sides[2]))
      return s
  end
  
  def to_s
    "Triangle has 3 sides: " + super
  end
end

p1 = Polygon.new(3)
p1.input_sides
puts p1

t1 = Triangle.new(3)
t1.input_sides
puts t1
puts "Chu vi: #{t1.tinh_chu_vi}"
puts "Diện tích: #{t1.tinh_dien_tich}"


