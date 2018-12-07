# tao hash thanh pho
thanh_pho = 
{
  'HCM'=>'Hồ Chí Minh',
    'HN'=>'Hà Nội',
    'CT'=>'Cần Thơ'
}
# tao hash quan
quan = 
{
  'HCM'=> Array["Quận 1", "Quận 2", "Quận 3", "Quận 4"],
    'HN'=>Array["Ba Đình", "Bắc Từ Liêm", "Cầu Giấy"],
      'CT'=>Array["Ninh Kiều", "Cái Răng", "Thốt Nốt"]
}

#in danh sach thanh pho
p 'Danh sách thành phố: '
tp = thanh_pho.values
puts tp
puts("Nhập tên thành phố: ")
name = gets.chomp
puts "Bạn vừa nhập thành phố #{name}"
=begin
in danh sach quan cua thanh pho da chon
lay ma thanh pho ung voi ten
=end
ma_tp = ""
thanh_pho.each do |city,city_name|
  if city_name = name
    ma_tp = city
    break
  end
end
if ma_tp != ""
  quan.each do |district,district_name|
    if district == ma_tp
      puts "Quận trong thành phố #{name}: #{district_name}"
    end
  end
end
