require "./Chuong 10/lib_json"
include Lib_json

filename = "Chuong 10/QLCT_1.json"
if File::exists?(filename)
  content = doc_file_json(filename)
  #puts content
  puts "--------------------------THÔNG TIN CÔNG TY---------------------------"
  puts "Tên công ty: #{content["CONG_TY"][0]["Ten"]}"
  puts "Địa chỉ: #{content["CONG_TY"][0]["Dia_chi"]}"
  array_dv = content["DON_VI"]
  tong_nv = 0
  array_dv.each do |don_vi|
  tong_nv += don_vi['So_Nhan_Vien'].to_i
  end
  
  puts "Tổng số nhân viên: #{tong_nv.to_s}"
  puts "***Thống kê theo từng ĐƠN VỊ***"
  i = 1
  array_dv.each do |don_vi|
    puts "#{i} / Tên đơn vị: #{don_vi['Ten']}"
    puts "- Số nhân viên: #{don_vi['So_Nhan_Vien']}"
    puts "- Tỷ lệ: #{don_vi['Ty_Le']}"
    i += 1
  end
else
  puts "Không tìm thấy tập tin này"
end
