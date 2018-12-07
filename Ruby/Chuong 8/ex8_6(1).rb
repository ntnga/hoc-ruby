require "./Chuong 8/lib_files"
include Lib_files

p "Nhap tên file: "
filename = gets.chomp
cont = 1
begin 
  p "Nhap tên: "
  ten  = gets.chomp
  p "Nhap so dien thoai: "
  phone = gets.chomp
  content = [ten,phone]
  write_csv_file(filename, content)
  print("Ban co muon ghi tiep? 1: Có, !=1: Không")
  cont = gets.chomp.to_i
end while cont == 1

puts "==================="
if File::exists?(filename)
  array_contents = read_file_csv(filename)
  puts "Danh sách số điện thoại như sau: "
  for item in array_contents
    puts item.inspect
  end
end