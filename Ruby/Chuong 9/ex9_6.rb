class Sach
  def initialize(ma,ten,ngay_nhap,don_gia,so_luong,nxb)
    @ma = ma
    @ten = ten
    @ngay_nhap = ngay_nhap
    @don_gia = don_gia
    @so_luong = so_luong
    @nxb = nxb    
  end
  
  def thanh_tien
    @so_luong * @don_gia
  end
  
  def to_s
    "** " + @ma + " - " + @ten + " - " + @ngay_nhap + " - " + @don_gia.to_s + 
      " - " + @so_luong.to_s + " - " +  @nxb + " - Thành tiền: " +
      thanh_tien().to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse + " vnd"      
  end
end

class SachGiaoKhoa < Sach
  @@sach_moi =  0
  @@sach_cu = 0
  def initialize(ma,ten,ngay_nhap,don_gia,so_luong,nxb, tinh_trang)
    #moi = 1, cu = 0
    super(ma,ten,ngay_nhap,don_gia,so_luong,nxb)
    @tinh_trang = tinh_trang
    if @tinh_trang == 1 #moi
      @@sach_moi += @so_luong
    else
      @@sach_cu += @so_luong
    end
  end
  
  def thanh_tien
    if @tinh_trang == 1 #moi
      super
    else
      super * 0.5
    end
  end
  
  def self.getSach_moi
    @@sach_moi
  end
  
  def self.getSach_cu
    @@sach_cu
  end
 end
 
 class SachThamKhao < Sach
   def initialize(ma,ten,ngay_nhap,don_gia,so_luong,nxb,thue)
     super(ma,ten,ngay_nhap,don_gia,so_luong,nxb)
     @thue = thue
   end
   
   def thanh_tien
     super + super*@thue/100
   end
 end
 
 #----------------------------
 arr_sgk = Array.new()
 arr_stk = Array.new()
 cont = 1
 begin
   print("Nhập mã sách: \n")
   ma = gets.chomp
   print("Tên sách:  \n")
   ten = gets.chomp
   print("Ngày nhập (dd/mm/YYYY): ")
   ngay_nhap = gets.chomp
   print("Đơn giá:  \n")
   don_gia = gets.chomp.to_i
   print("Số lượng:  \n")
   so_luong = gets.chomp.to_i
   print("Nhà xuất bản:  \n")
   nxb = gets.chomp
   print("Loại sách: 1:Sách giáo khoa, 2: Sách tham khảo  \n")
   loai = gets.chomp.to_i
   if loai == 1 # sach giao khoa
     print("Tình trạng: 1: Sách mới 0: Sách cũ \n")
     tinh_trang = gets.chomp.to_i
     sgk = SachGiaoKhoa.new(ma,ten,ngay_nhap,don_gia,so_luong,nxb,tinh_trang)
     arr_sgk<<sgk
     puts "Danh sách SGK \n"
     tong_tien = 0
     for item in arr_sgk
       puts item
       tong_tien += item.thanh_tien
     end
     puts "Tổng thành tiền: #{tong_tien.to_s.reverse.gsub(/(\d{3})(?=\d)/,'\\1,').reverse} vnd"
     puts "Số sách mới: #{SachGiaoKhoa.getSach_moi.to_s}"
     puts "Số sách cũ: #{SachGiaoKhoa.getSach_cu.to_s}"
   else #sach tham khao
     print("Nhập thuế (từ 5% đến 20%):  \n")
     thue = gets.chomp.to_i
     stk = SachThamKhao.new(ma,ten,ngay_nhap,don_gia,so_luong,nxb,thue)
     arr_stk<<stk
     puts "Danh sách STK \n"
     tong_tien = 0
     for item in arr_stk
       puts item
       tong_tien += item.thanh_tien
     end
     puts "Tổng thành tiền: #{tong_tien.to_s.reverse.gsub(/(\d{3})(?=\d)/,'\\1,').reverse} vnd"
   end
   print("Tiếp tục nhập sách? 1: Có !=1: Không  \n")
   cont = gets.to_i
end while cont == 1
puts "Kết thúc mua"