require "./Chuong 8/lib_files"
include Lib_files

puts "Nhập tên tập tin: "
filename = gets.chomp
puts "Nhập nội dung: "
content = gets.chomp
write_file(filename, content)
puts "======================"

if File::exists?(filename)
  content = Lib_files.read_file(filename)
  puts "Nội dung tập tin: "
  puts content
end
puts "Đã lưu vào từ điển!"
