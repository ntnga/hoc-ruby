require "./Chuong 8/lib_files"
include Lib_files

puts "Nhập tập tin cần đọc: "
filename = gets.chomp
if File::exists?(filename)
  content = Lib_files.read_file(filename)
  puts "Nội dung tập tin"
  puts content
else
  puts "Không tìm thấy tập tin #{filename}"
end