require "./Chuong 5/lib.methods"
include Lib_methods
require "./Chuong 8/lib_files"
include Lib_files

class ThueThuNhapCaNhan
  LUONG_CO_BAN =  1390000
  @@tong_nhan_vien_dong_thue = 0
  
  def initialize(ten,he_so,nguoi_giam_tru,phu_cap)
    @ten = ten
    @he_so = he_so
    @nguoi_giam_tru = nguoi_giam_tru
    @phu_cap = phu_cap
  end
  
  def tinh_thu_nhap()
    @thu_nhap = (@he_so*LUONG_CO_BAN+@phu_cap)
  end
  
  def tinh_thu_nhap_chiu_thue()
    @thu_nhap_chiu_thue =  (@thu_nhap - 9000000 -(@nguoi_giam_tru*3600000))
  end
  
  def tinh_thue_thu_nhap_ca_nhan
  end
end