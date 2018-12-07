puts "Nhập n: "
n = gets.chomp.to_i

a = 0
b = 0
c = 1
d = 1
e = 0

str_a = ""
str_b = ""
str_c = ""
str_d = ""
str_e = ""

i = 1
while i <= n do
  if i % 2 == 0 # sochan
    a += i
    str_a += (i != n) ? i.to_s + " + " : i.to_s
  else # sole
    b += i
    str_b += (i != n) ? i.to_s + " + " : i.to_s
  end
  
  c *= i
  str_c += (i != n) ? i.to_s + " * " : i.to_s
  
  if i % 3 == 0
    d *= i
    str_d += i.to_s + " * "
  end
  
  # so nguyen to
  count = 0
  j = 1
  for j in 1..i
    if i % j == 0
      count += 1
    end
  end
  if count == 2
    e += i
    str_e += i.to_s + " + "
  end
  i += 1
end

puts "A = #{str_a} = #{a}"
puts "B = #{str_b} = #{b}"
puts "C = #{str_c} = #{c}"
puts "D = #{str_d} = #{c}"
puts "E = #{str_e} = #{e}"