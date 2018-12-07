module NguoiLamVuon
  def lam_co
    puts "Làm cỏ, bắt sâu"
  end
  def trong_cay
    puts "Trồng cây"
  end
end

module NguoiLapTrinh
  def thu_thap_yeu_cau
    puts "Thu thập yêu cầu khác hàng"
  end
  def lap_trinh
    puts "Lập trình"
  end
end

class NguoiDaNang
  include NguoiLamVuon
  include NguoiLapTrinh
  def initialize
    puts "Tôi là một người đa năng"
  end  
end

dn = NguoiDaNang.new
dn.trong_cay
dn.lap_trinh