require 'date'

class GiaoDich
  def initialize(ma, ngay, don_gia, so_luong, loai)
    @ma = ma
    @ngay = ngay
    @don_gia = don_gia
    @so_luong = so_luong
    @loai = loai
  end
  
  def thanh_tien
    @so_luong * @don_gia
  end
  
  def getSo_Luong
    @so_luong
  end
  
  def to_s
    @ma + "," + @ngay + " , giá " + @son_gia.to_s + ", số lượng " + @so_luong.to_s + ", " + @loai.to_s + ", "
  end
end

class GiaoDichTienTe < GiaoDich
  def initialize(ma, ngay, don_gia, so_luong, loai, loai_giao_dich)
    super(ma,ngay,don_gia,so_luong,loai)
    @loai_giao_dich = loai_giao_dich
  end
  
  #loai giao dich : mua = 1, bán = 0
  def thanh_tien
    if @loai_giao_dich == 1
      return super
    else
      return super * 1.05
    end
  end
  
  def to_s
    super.to_s() + ", " + (@loai_giao_dich == 1? "GD Mua" : "GD Bán  \n")
  end
end

#------------------------

arr_vang = Array.new()
arr_tien = Array.new()
cont = 1
begin
  print("Chọn loại giao dịch : 1: Vàng, 2:Ngoại tệ  \n")
  type = gets.chomp.to_i
  #neu type =1 thì dang chon giao dich vang
  if type == 1
    print("Nhập mã giao dịch:  \n")
    ma = gets.chomp
    time = Time.new
    ngay = time.strftime("%Y-%m-%d %H:%M:%S")
    puts "Ngày giao dịch #{ngay}"
    print("Nhập loại vàng (18K, 24K, 9999):  \n")
    loai = gets.chomp
    print("Nhập đơn giá:  \n")
    don_gia = gets.chomp.to_f
    print("Nhập số lượng:  \n")
    so_luong = gets.chomp.to_i
    gdv = GiaoDich.new(ma,ngay,don_gia,so_luong,loai)
    arr_vang<<gdv
    tong_slv = 0
    tong_tien_vang = 0
    for item in arr_vang
      puts item
      tong_slv += item.getSo_Luong
      tong_tien_vang += item.thanh_tien()
    end
    puts "Tổng số lượng vàng : #{tong_slv}"
    puts "Tổng số tiền vàng: #{tong_tien_vang}"
    #chon giao dịch tiền
  else
    print("Nhập mã giao dịch: ")
    ma = gets.chomp
    time = Time.new
    ngay = time.strftime("%Y-%m-%d %H:%M:%S")
    puts "Ngày giao dịch #{ngay}"
    print("Nhập loại (USD, EUR, AUD):  \n")
    loai = gets.chomp
    print("Mua hay bán? 1: mua, 0: bán \n ")
    loai_giao_dich = gets.chomp.to_i
    print("Nhập đơn giá: \n")
    don_gia = gets.chomp.to_f
    print("Nhập số lượng: \n")
    so_luong = gets.chomp.to_i
    gdt = GiaoDichTienTe.new(ma,ngay,don_gia,so_luong,loai,loai_giao_dich)
    
    arr_tien<<gdt
    tong_slt = 0
    tong_tien_tien = 0
    for item in arr_tien
      puts item
      tong_slt += item.getSo_Luong
      tong_tien_tien += item.thanh_tien()
    end
    puts "Tổng số lượng tiền: #{tong_slt}"
    puts "Tổng số tiền: #{tong_tien_tien}"    
  end
  print("Tiếp tục giao dịch? 1: Có, !=1: Không \n")
  cont = gets.chomp.to_i
end while cont == 1
puts "Kết thúc giao dịch"


