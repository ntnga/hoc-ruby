puts 'Nhập điểm:'
diem =  gets.chomp.to_f
if diem <= 5
  xep_loai = "Yếu - Kém"
elsif diem < 6
  xep_loai = "Trung bình"
elsif diem < 7
  xep_loai = "Khá"
elsif diem < 9
  xep_loai = "Giỏi"
else 
  xep_loai = "Xuất sắc" 
end
puts xep_loai