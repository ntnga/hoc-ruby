def tinh_diem_trung_binh(hk1,hk2)
  tb = (hk1 + hk2*2) / 3
  return tb
end

def chon_quan_ao(quan_ao = "Đồng phục")
  puts "Hôm nay tôi sẽ mặc #{quan_ao}"
end

def tinh_diem_TB(*ds_diem)
so_cot_diem = ds_diem.length
puts "Bạn có #{so_cot_diem} cột điểm"
tong_diem = 0
for diem in ds_diem
  tong_diem += diem
end
tb = tong_diem/so_cot_diem
return tb
end

def in_loi_chao(loi_chao, *ds_ten)
  for ten in ds_ten
    puts "#{loi_chao} #{ten}"
  end
end


def tinh_toan(a,b)
  tong = a + b
  hieu = a - b
  tich = a * b
  thuong = a / b
  
  return tong, hieu, tich, thuong
end

puts "Nhập điểm hk1:"
hk1 = gets.chomp.to_f
puts "Nhập điểm hk2:"
hk2 = gets.chomp.to_f

tb = tinh_diem_trung_binh(hk1,hk2)
puts "Điểm trung bình = #{tb.round(3)}"

chon_quan_ao()
chon_quan_ao("Áo dài")

nga = tinh_diem_TB(5,6,1,10,7)
puts "Điểm trung bình của Nga: #{nga}"

nhi = tinh_diem_TB(10,9,8,1)
puts "Điểm trung bình của Nhi: #{nhi}"

in_loi_chao("Hello", "Nga", "Nhi")
in_loi_chao("Xin chào", "Kiệt", "Phụng", "Thắng")

tong, hieu, tich, thuong  = tinh_toan(10,5)
puts "Tổng = #{tong}"
puts "Hiệu = #{hieu}"
puts "Tích = #{tich}"
puts "Thương = #{thuong}"
