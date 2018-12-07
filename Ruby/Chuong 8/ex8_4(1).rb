require "./Chuong 8/lib_files"
include Lib_files

puts "Nhập tên tập tin: "
filename = gets.chomp
cont = 1
begin
  puts "Nhập nội dung: "
  content = gets.chomp
  write_file_append(filename, content)
  print("Bạn có muốn nhập và ghi tiếp? 1: Yes, !=1: No \n")
  cont = gets.chomp.to_i
end while cont == 1

puts "==============\n"
if File::exists?(filename)
  content = Lib_files.read_file(filename)
  puts "Nội dung tập tin: "
  puts content
end
puts "Đã thêm vào từ điển"
