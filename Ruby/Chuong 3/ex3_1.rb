puts 'Nhập a:'
a = gets.chomp.to_i
puts 'Nhập b:'
b = gets.chomp.to_i
puts 'Nhập c:'
c = gets.chomp.to_i
puts 'Nhập d:'
d = gets.chomp.to_i

max = a
if max < b
  max = b
end

if max < c
  max = c
end

if max < d
  max = d
end

min = a
if min > b
  min = b
end

if min > c
  min = c
end

if min > d
  min = d
end

puts "a, b, c, d : #{a}, #{b}, #{c}, #{d}"
puts "Max = #{max}"
puts "Min = #{min}"
