require "./Chuong 10/lib_json"
include Lib_json

url = "http://dev-er.com/service_api_ban_sach/api_service_sach.php"
content = doc_json_nethttp(url)
puts "=========================THỐNG KÊ SÁCH========================="
tong_sach = content.size
puts "Tổng số sách : #{tong_sach} đầu sách"
i = 1
content.each do |sach|
  puts "<#{i}>#{sach["ten_sach"]} \n    Ngày xuất bản: #{sach["ngay_xuat_ban"]} \n    Giá bìa: #{sach["gia_bia"]} "
  i += 1
end