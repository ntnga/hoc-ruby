class Vector
  def initialize(a,b)
    @a = a
    @b = b
  end
  
  def to_s
    "Vector (#{@a}, #{@b})"
  end
  def getA
    @a
  end
  def getB
    @b
  end
  
  def +(other)
    Vector.new(@a + other.getA, @b + other.getB)
  end
  
  def *(other)
    Vector.new(@a * other.getA, @b * other.getB)
  end
  
  def -@
    Vector.new(-@a, -@b)
  end
end


vector1 = Vector.new(2,3)
vector2 = Vector.new(2,2)
vector3 = vector1 + vector2
vector4 = vector1 * vector2
vector5 = -vector1
puts vector1
puts vector2
puts vector3
puts vector4
puts vector5
