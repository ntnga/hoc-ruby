require "./Chuong 5/lib.methods"
include Lib_methods

=begin
puts "Kiểm tra số nguyên tố: "
puts "Nhập x: "
x = gets.chomp.to_i

if kiem_tra_so_nguyen_to(x)
puts "#{x} là số nguyên tố" 
else
puts "#{x} không là số nguyên tố"
end
=end

=begin
puts "Giải phương trình bậc 1:"
puts "Nhập a: "
a = gets.chomp.to_f
puts "Nhập b: "
b = gets.chomp.to_f
giai_phuong_trinh_bac_1(a, b)
=end

=begin
puts "Giải phương trình bậc 2: "
puts "Nhập a: "
a = gets.chomp.to_i
puts "Nhập b: "
b = gets.chomp.to_i
puts "Nhập c: "
c = gets.chomp.to_i
giai_phuong_trinh_bac_2(a, b, c)
=end

=begin
puts "Tính tiền điện:"
puts "Nhập số kw điện: "
kw = gets.chomp.to_i
tien = tinh_tien_dien(kw)
puts "Số tiền điện là #{tien}"
=end

puts "Tính tiền GrabCar"
puts "Nhập thời gian chờ:"
thoi_gian_cho = gets.chomp.to_i
puts "Nhập loại xe"
loai_xe = gets.chomp.to_i
puts "Nhập số km"
so_km = gets.chomp.to_i

tien_cho, tien_xe, thanh_tien = tinh_tien_grabcar(loai_xe, so_km, thoi_gian_cho)
puts "Tiền chờ = #{WAIT} * #{thoi_gian_cho} = #{tien_cho}"
puts 
