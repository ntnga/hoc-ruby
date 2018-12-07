require"./Chuong 8/lib_files"
include Lib_files

class KhoaHoc
  @@tong_hoc_phi = 0
  
  def initialize(ma,ten,thoi_luong,hoc_phi)
    @ma = ma
    @ten = ten
    @thoi_luong = thoi_luong
    @hoc_phi = hoc_phi
    # có thể có hoặc không
    @@tong_hoc_phi += @hoc_phi
  end
  
  def to_s
    "**" + @ma + "-" + @ten + "-" + @thoi_luong.to_s + " giờ -" + @hoc_phi.to_s + "vnd"
  end
  
  def self.getTongHocPhi
    @@tong_hoc_phi
  end
  
  #phương thức lấy giá trị của thuộc tính: get
  def getMa
    @ma
  end
  def getTen
    @ten
  end
  def getThoi_luong
    @thoi_luong
  end
  def getHoc_phi
    @hoc_phi
  end
end
#-------------------------------------------------------
#Sử dụng
arr_khoa_hoc = Array.new() #tao mang de chua khoa học
cont = 1
begin
  print("Nhập mã khóa học: ")
  ma = gets.chomp
  print("Nhập tên khóa học: ")
  ten =gets.chomp
  print("Nhập thời lượng(giờ): ")
  thoi_luong = gets.chomp.to_i
  print("Nhập học phí: ")
  hoc_phi = gets.chomp.to_i
  kh = KhoaHoc.new(ma, ten, thoi_luong, hoc_phi)
  arr_khoa_hoc<<kh
  puts arr_khoa_hoc
  puts "Tổng học phí = #{KhoaHoc.getTongHocPhi()}"
  
  print("Tiếp tục nhập? 1: Có, !1= Không ")
  cont = gets.chomp.to_i
end while cont == 1

puts "Kết thúc chương trình"

print("Ghi vào tập tin? 1:Có, !1=Không")
ghi = gets.chomp.to_i
if ghi == 1
  filename = "Chuong 9/khoa_hoc.csv"
  for item in arr_khoa_hoc
    content = [item.getMa, item.getTen, item.getThoi_luong, item.getHoc_phi]
    write_csv_file(filename, content)
  end
  print("Đã ghi khóa học")
  puts read_file_csv(filename)
end
