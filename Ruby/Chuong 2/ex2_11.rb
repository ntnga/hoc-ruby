puts "Nhập diện tích"
s = gets.chomp.to_f
s = Math::PI * r * r
r * r = s / Math::PI
r = s / Math::PI 
puts "Diện tích = #{r.round(2)}"
#sai

puts "Nhập bán kính"
r = gets.chomp.to_f
p = 2 * r * Math::PI
s = Math::PI * r * r
puts "p = 2 * PI * #{r} = #{p.round(2)}"
puts "s = PI * #{r}^2 = #{s.round(2)}"