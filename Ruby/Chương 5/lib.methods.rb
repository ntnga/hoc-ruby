module Lib_methods
  def kiem_tra_so_nguyen_to(so)
    count = 0
    i = 1
    for i in 1..so
      if so % i == 0
        count += 1
      end
    end
    return count == 2
  end
  
  def giai_phuong_trinh_bac_1(a, b)
    if a == 0 and b != 0
      puts "Phương trình vô nghiệm"
    elsif a == 0 and b == 0
      puts "Phương trình vô số nghiệm"
    else
      puts "Phương trình có nghiệm x = -b/a = #{-b/a}"
    end
  end
  
  def giai_phuong_trinh_bac_2(a, b, c)
    if a == 0
      puts "Phương trình suy biến thành bậc 1"
      giai_phuong_trinh_bac_1(b, c)
    else
      delta = (b * b) - 4 * a * c
      puts "Phương trình bậc 2: "
      if delta < 0
        puts "Phương trình vô nghiệm"
      elsif delta == 0
        puts "Phương trình có nghiệm kép x1 = x2 = x0 = #{-b/(2*a)}"
      else
        puts "Phương trình có 2 nghiệm kép x1 = #{(-b + delta**0.5)/(2*a)} , x2 = #{(-b - delta**0.5)/(2*a)}  "
      end
    end
  end
  
  MUC1 = 1549
  MUC2 = 1600
  MUC3 = 1858
  MUC4 = 2340
  MUC5 = 2615
  MUC6 = 2701
  
  BAC50 = 50
  BAC100 = 100
  
  def tinh_tien_dien(so_kw)
    tien_dien = 0
    if so_kw <= 50
       tien_dien = so_kw * MUC1
     elsif so_kw <= 100
       tien_dien = BAC50 * MUC1 + (so_kw - BAC50) * MUC2
     elsif so_kw <= 200
       tien_dien = BAC50 * MUC1 + BAC50 * MUC2 + (so_kw - BAC100) * MUC3
     elsif so_kw <= 300
       tien_dien = BAC50 * MUC1 + BAC50 * MUC2 + BAC100 * MUC3 + (so_kw - BAC50 - BAC50 - BAC100) * MUC4
     elsif so_Kw <=400
       tien_dien = BAC50 * MUC1 + BAC50 * MUC2 + BAC100 * MUC3 + BAC100 * MUC4 + (so_kw - BAC50 - BAC50 - BAC100 - BAC100) * MUC5
     else so_kw >=401
       tien_dien = BAC * MUC1 + BAC50 * MUC2 + BAC100 * MUC3 + BAC100 * MUC4 + BAC100 * MUC5 + (so_kw - BAC50 - BAC50 - BAC100 - BAC100 - BAC100) * MUC6
     end
     return tien_dien
     puts tien_dien
  end
  
  WAIT = 300
  MIN_2KM_4C = 20000
  KM_4C = 9000
  MIN_2KM_7C = 24000
  KM_7C = 11000
  tien_cho = 0
  tien_xe = 0
  thanh_tien = 0
  
 def tinh_tien_grabcar(loai_xe, so_km, thoi_gian_cho)
   if loai_xe == 4
       if so_km <= 2
       tien_xe = MIN_2KM_4C
       else
         tien_xe = MIN_2KM_4C + KM_4C * (so_km - 2) 
       end
     elsif loai_xe == 7
       if so_km <= 2
         tien_xe = MIN_2KM_7C
         else
           tien_xe = MIN_2KM_7C + KM_7C * (so_km - 2) 
         end
     else
       "Vui lòng chọn xe 4 chỗ hoặc 7 chỗ"
     end
     
     tien_cho = thoi_gian_cho * WAIT
     thanh_tien = tien_cho + tien_xe
     return tien_cho, tien_xe, thanh_tien
 end  
  
end