puts "Nhập n: "
n = gets.chomp.to_i
n_gt = 1
n_gt_chan = 1
n_gt_le = 1

str_gt = ""
str_le = ""
str_chan = ""

for i in (1..n)
  n_gt *= i
  str_gt += (i != n) ? i.to_s + " * ": i.to_s
end
puts "#{n}! = #{str_gt} = #{n_gt}"

if n % 2 == 0 # giai thua chan
  i = 2
  while i <= n
    n_gt_chan *= i
    str_chan += (i != n) ? i.to_s + " * " : i.to_s
    i += 2
  end
  puts "#{n}!! = #{str_chan} = #{n_gt_chan}"
else # giai thua le
  i = 1
  while i <= n
    n_gt_le *= i
    str_le += (i != n) ? i.to_s + " * " : i.to_s
    i += 2
  end
  puts "#{n}!! = #{str_le} = #{n_gt_le}"
end