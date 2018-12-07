require "./Chuong 8/lib_files"
include Lib_files

puts "Nhập tập tin cần đọc: "
filename = gets.chomp
if File::exists?(filename)
  array_contents = read_file_csv(filename)
  puts "Nội dung tập tin"
  for item in array_contents
    puts item.inspect
  end
else
  puts "Không tìm thấy tập tin #{filename}"
end