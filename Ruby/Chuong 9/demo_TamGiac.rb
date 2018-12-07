$thong_tin = "Đây là tam giác"
class TamGiac
  @@so_luong = 0
  #phuong thuc khoi tao
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
    @@so_luong +=1
  end
  
  #phuong thuc tinh toan
  def tinh_chu_vi
    @a + @b + @c
  end
  
  def tinh_dien_tich
    p = tinh_chu_vi.to_f/2
    s = Math.sqrt(p*(p-@a)*(p-@b)*(p-@c))
      return s
  end
  
  #phuong thuc in
  def in_tam_giac
    puts $thong_tin
    puts "a = #{@a}, b = #{@b}, c = #{@c}"
  end
  
  #phuong thuc in truc tiep
  def to_s
    "3 cạnh là a: #@a, #@b, #@c"
  end
  def self.getSo_luong
    @@so_luong
  end
  
  #phương thức lấy giá trị của thuộc tính: get
  def getA
    @a
  end
  def getB
    @b
  end
  def getC
    @c
  end
  
  #phương thức gán giá trị cho thuộc tính: set
  def setA=(value)
    @a = value
  end
  def setB=(value)
    @b = value
  end
  def setC=(value)
    @c = value
  end
  
end

#sử dụng lớp
tg1 = TamGiac.new(2,3,4)
puts tg1

puts "Tam giác #{TamGiac.getSo_luong} : #{tg1.getA}, #{tg1.getB}, #{tg1.getC}"
puts "Chu vi: #{tg1.tinh_chu_vi}"
puts "Diện tích: #{tg1.tinh_dien_tich.round(2)}"

tg2 = TamGiac.new(3,4,5) #có 3 cạnh @a, @b, @c lần lượt là 3,4,5
puts "Tam giác #{TamGiac.getSo_luong}: #{tg2}"

tg3 = TamGiac.new(3,4,5)
tg3.setA = 10
tg3.setB = 11
tg3.setC = 12
tg3.in_tam_giac

puts "Số lượng tam giác: #{TamGiac.getSo_luong}"