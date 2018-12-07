puts 'Nhập số tiền'
so_tien = gets.chomp.to_i

if so_tien % 1000 == 0
  
  # doi tien
  to_20000 = 0
  to_10000 = 0
  to_5000 = 0
  to_2000 = 0
  to_1000 = 0

  to_20000 = so_tien/20000
  so_tien = so_tien - (to_20000 * 20000)
  if so_tien > 0
    to_10000 = so_tien/10000
    so_tien = so_tien - (to_10000 *10000)
  end
   if so_tien > 0
     to_5000 = so_tien/5000
     so_tien = so_tien - (to_5000 * 5000)
   end
   if so_tien > 0
     to_2000 = so_tien/2000
     so_tien = so_tien - (to_2000 * 2000)
   end
   if so_tien > 0
     to_1000 = so_tien/1000
     so_tien = so_tien - (to_1000 * 1000)
   end
   puts "Có #{to_20000} tờ 20.000, #{to_10000} tờ 10.000, #{to_5000} tờ 5.000, #{to_2000} tờ 2.000, #{to_1000} tờ 1.000"
else
  puts "Vui lòng nhập số tiền chia hết cho 1000"
end