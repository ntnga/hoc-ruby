print("Nhập số: ")
number = gets.chomp.to_i
str_cc = ""
puts "**********************"
puts " In bảng cửu chương "
puts "**********************"
i = 1
until i > 9
  str_cc += number.to_s + " x " + i.to_s+ " = " + (i * number).to_s + "\n"
    i += 1
end
puts str_cc