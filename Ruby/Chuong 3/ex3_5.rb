puts "Giải phương trình"
puts "Nhập a:"
a = gets.chomp.to_f
puts "Nhập b:"
b = gets.chomp.to_f
puts "Nhập c"
c = gets.chomp.to_f

if a == 0
  puts "Phương trình suy biến thành bậc 1 "
  if b == 0 and c!= 0
    puts "Phương trình vô nghiệm"
  elsif b == 0 and b == 0
    puts "Phương trình vô số nghiệm"
  else
    puts "Phương trình có nghiệm x = -c/b = #{-c/b}"   
  end
else
  delta = (b * b) - 4 * a * c
  puts "Phương trình bậc 2: "
  if delta < 0
    puts "Phương trình vô nghiệm"
  elsif delta == 0
    puts "Phương trình có nghiệm kép: x1 = x2 = x0 = -b / (2 * a) "
  else delta > 0
    puts "Phương trình có 2 nghiệm x1 = #{(-b + delta**0.5)/(2*a)}, x2 = #{(-b - Math::sqrt(delta))/(2*a)}"
  end
end