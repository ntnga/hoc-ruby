# tính tiền điện cho hộ gia đình theo biểu giá sau
MUC1 = 1549
MUC2 = 1600
MUC3 = 1858
MUC4 = 2340
MUC5 = 2615
MUC6 = 2701

BAC50 = 50
BAC100 = 100

tien_dien = 0

puts "Nhập số kw tiêu thụ:"
so_kw = gets.chomp.to_i

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
puts "Tiền điện phải trả = #{tien_dien}"