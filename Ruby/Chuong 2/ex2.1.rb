puts "Nhập số lượng:"
so_luong = gets.chomp.to_i
puts "Nhập đơn giá:"
don_gia = gets.chomp.to_i
thanh_tien = so_luong * don_gia
puts "Thành tiền = #{so_luong} * #{don_gia} = #{thanh_tien}"
