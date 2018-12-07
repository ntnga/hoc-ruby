class Diem 
  def initialize(x,y)
    @x = x
    @y = y
  end
  
  def tinh_khoang_cach(diemB)
    return((@x-diemB.getX)*(@x - diemB.getX) + (@y - diemB.getY) *(@y - diemB.getY)).to_f ** 0.5
  end
  
  def to_s
    "("+ @x.to_s + "," + @y.to_s + ")"
  end
  
  def getX
    @x
  end
  def getY
    @y
  end
end

#--------------------------------
#gọi hàm sử dụng class
cont = 0
begin
puts 'Tính khoảng cách giữa A và B: '
print('Nhập Ax: ')
ax = gets.chomp.to_i
print("Nhập Bx: ")
bx = gets.chomp.to_i
print("Nhập Ay: ")
ay =gets.chomp.to_i
print("Nhập By: ")
by = gets.chomp.to_i

diemA = Diem.new(ax,ay)
diemB = Diem.new(bx,by)

puts "Khoảng cách giữ A #{diemA} và B #{diemB}: #{diemA.tinh_khoang_cach(diemB).round(2)}"
puts "Tính tiếp 1:YES, !=1: NO"
cont = gets.chomp.to_i
end while cont == 1

puts "Hoàn thành"


