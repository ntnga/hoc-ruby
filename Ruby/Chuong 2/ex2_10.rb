puts "Nhập lãi suất 1 năm (%):"
lai_suat_1_nam = gets.chomp.to_f
puts "Nhập số tiền gửi:"
so_tien_gui = gets.chomp.to_f
puts "Nhap so thang gui:"
so_thang_gui = gets.chomp.to_i
tien_lai = so_tien_gui * so_thang_gui * lai_suat_1_nam/100/12
tien_von_va_lai = so_tien_gui + tien_lai
puts "Tiền lãi = #{tien_lai}"
puts "Tổng_tiền = Tiền vốn + lãi = #{so_tien_gui} + #{tien_lai} = #{tien_von_va_lai}"
