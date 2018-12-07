#Bai 5 method, block, module
require "./Chuong 5/lib.methods"
include Lib_methods

def tao_mang_ngau_nhien(n)
  arr = Array.new()
  i = 0
  while i < n
    arr<<rand(1..30)
    i += 1
  end
  return arr
end

def cac_so_NT(arr)
  arr_prime = Array.new()
  arr.each do |i|
    if Lib_methods.kiem_tra_so_nguyen_to(i)
      arr_prime<<i
    end
  end
  return arr_prime
end

puts "Nhập số phần tử cho mảng: "
n = gets.chomp.to_i
arr = tao_mang_ngau_nhien(n)
puts "Array: #{arr}"
puts "Các số nguyên tố trong array: cac_so_NT(array)"
puts "Trung bình cộng: #{arr.sum().to_f/arr.size.to_f.round(2)}"
puts "Giá trị lớn nhất: #{arr.max()}"
puts "Giá trị nhỏ nhất: #{arr.min()}"
puts "Array tăng dần: #{arr.sort}"
arr.sort! {|x,y| y <=> x}
puts "Array giảm dần: #{arr}"