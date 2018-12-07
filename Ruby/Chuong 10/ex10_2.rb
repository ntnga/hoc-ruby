require "./Chuong 10/lib_json"
include Lib_json

url = "http://dev-er.com/service_api_ban_sach/api_service_sach.php?task=sach_noi_bat"
content = doc_json_httparty(url)
puts "===========================THỐNG KÊ SÁCH NỔI BẬT==========================="
tong_sach = content.size
puts "Tổng số sách nổi bật : #{tong_sach} đầu sách"
i = 1
content.each do |sach|
  puts "#{i} / #{sach["ten_sach"]} - Tác giả: #{sach["ten_tac_gia"]}"
  puts "\t Ngày xuất bản: #{sach["ngay_xuat_ban"]} - Giá bìa: #{sach["gia_bia"]}"
  puts "\t Nội dung: #{sach["gioi_thieu"][0,100]}"
  i += 1
end