#5 - 4 = 456976 (bai 1)
def tinh_s(x,n)
  s = (x * x + 1) **n
  return s
end

puts "Nhập x:"
x = gets.chomp.to_i
puts "Nhập n:"
n = gets.chomp.to_i

s = tinh_s(x,n)
puts "S = (x^2 + 1)^n = #{s}"
