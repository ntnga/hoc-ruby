require 'json'
require "./Chuong 10/lib_json"
include Lib_json

print("Nhập mã phòng: ")
ma_phong = gets.chomp
print("Tên phòng: ")
ten = gets.chomp
print("Đơn giá: ")
don_gia = gets.chomp.to_i
print("Số khách tối đa: ")
so_khach_toi_da = gets.chomp.to_i
print("Trạng thái (CON_TRONG hoặc CO_KHACH): ")
trang_thai = gets.chomp

hash = {ma_phong => [{"ma_phong" => ma_phong, "ten" => ten, "don_gia" => don_gia,
"so_khach_toi_da" => so_khach_toi_da, "trang_thai" => trang_thai}]}

phong = [{"ma_phong" => ma_phong, "ten" => ten, "don_gia" => don_gia, 
"so_khach_toi_da" => so_khach_toi_da, "trang_thai" => trang_thai}]

filename = "Chuong 10/ql_karaoke.json"
if File::exists?(filename)
  content = doc_file_json(filename)
  content[ma_phong] = phong
  File.wrrite(filename,content.to_json)
  puts "Đã ghi thông tin vào #{filename}"
else
  File.write(filename,hash.to_json)
  puts "Đã ghi thông tin vào #{filename}"
end
puts "Nội dung tập tin sau khi ghi: "
content = doc_file_json(filename)
pp content