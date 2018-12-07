puts 'Nhập số:'
so = gets.chomp.to_i
if so % 2 == 0
  puts "#{so} là số chẵn"
else
  puts "#{so} là số lẻ"
end