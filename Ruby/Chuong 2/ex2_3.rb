puts "Nhập bán kính"
r = gets.chomp.to_f
p = 2 * r * Math::PI
s = Math::PI * r * r
puts "p = 2 * PI * #{r} = #{p.round(2)}"
puts "s = PI * #{r}^2 = #{s.round(2)}"