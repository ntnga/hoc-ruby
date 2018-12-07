puts 'Nhập x:'
x = gets.chomp.to_i
if x < 0
  puts "|#{x}| = #{-x}"
else
  puts "|#{x}| = #{x}"
end