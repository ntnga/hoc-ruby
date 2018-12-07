danh_ba = 
{
  "Nga"=>"0256987456",
    "Tuyết"=>"0236985742",
    "Nguyễn"=>"02986745123",
    "Ruby"=>"0987564125"    
}

cont = 1
begin
  print("Bạn muốn làm gì? \n 1.Xem danh bạ \n 2.Tìm kiếm \n 3.Tạo mới")
  choice = gets.chomp.to_i
  if choice == 1
    puts "Tên     Số điện thoại"
    danh_ba.each {|key,value| puts "- #{key} : #{value}" }
  elsif choice == 2
    print ("Nhập tên cần tim: ")
    name = gets.chomp
    keys = danh_ba.keys
    if keys.include?(name)
      puts "Bạn #{name} có số điện thoại là #{danh_ba[name]} "
    else
      puts "Không tìm thấy bạn #{name} trong danh bạ"
    end    
  else choice == 3
    print("Nhập tên: ")
    name = gets.chomp
    print("Nhập số điện thoại: ")
    phone = gets.chomp
    danh_ba[name] = phone
    puts "Tên     Số điện thoại"
  danh_ba.each {|key,value| puts "- #{key} : #{value}" }
  end
  print("Tiếp tục lựa chọn? 1:Có !=1: Không ")
  cont = gets.chomp.to_i
end while cont == 1
puts "Stop!"