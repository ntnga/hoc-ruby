require 'date'

puts 'Nhập ngày'
ngay = gets.chomp.to_i
puts 'Nhập tháng'
thang = gets.chomp.to_i
puts 'Nhập năm'
nam = gets.chomp.to_i

date1 = Date.new(nam, thang, ngay)
puts "Ngày tháng năm vừa nhập: #{date1.strftime("%a, %b %d-%m-%Y")}"

days = Date.new(nam, thang, -1).day
puts "Ngày trong tháng: #{days}"

leap = Date.leap?(nam)
chuoi = leap ? "là năm nhuận" : "không là năm nhuận"
puts "Năm #{nam} #{chuoi}"