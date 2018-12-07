def tao_array
  array_numbers = Array.new()
  cont = 1
  i = 1
  begin
    print ("Nhập phần tử thứ #{i}: ")
    phan_tu =gets.chomp.to_i
    array_numbers<<phan_tu
    i += 1
    print("Tiếp tục nhậP ? 1: Có 2: Không")
    cont = gets.chomp.to_i
  end while cont == 1
  return array_numbers
end

def tinh_tong(array_numbers)
  sum = 0
  array_numbers.each do |i|
    sum += i
  end
  return sum
end

def array_lon_hon_x(array_numbers, x)
  arr = Array.new()
  array_numbers.each do |i|
    if x < i
      arr<<i
    end
  end
  return arr
end

puts "Tạo array: "
array_numbers = tao_array()
puts "Array: #{array_numbers}"
puts "Tổng giá trị các phần tử tự tính = #{tinh_tong(array_numbers)}"
puts "Tổng giá trị các phần tử bằng hàm = #{array_numbers.sum}"
puts "Nhập x: "
x = gets.chomp.to_i
if array_numbers.include?(x)
  puts "#{x} có xuất hiện trong array #{array_numbers.count(x)}"
end
max_array = array_numbers.max()
if x > max_array
  puts "#{x} lớn hơn các phần tử trong mảng"
else
  puts "Các phần tử lớn hơn x: #{array_lon_hon_x(array_numbers,x)}"
end
