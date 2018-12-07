def kiem_tra_so_nguyen_to(number)
  count = 0
  i = 1
  for i in 1..number
    if number % i == 0
      count += 1
    end
  end
  return count == 2
end

def count_so_nguyen_to(n)
  str_nt = ""
    i = 2
    while n > 0
      if kiem_tra_so_nguyen_to(i)
        str_nt += i.to_s + ", "
          n -= 1
      end
      i += 1
    end
    return str_nt
end

puts "Nhập n:"
n = gets.chomp.to_i
puts "#{n} số nguyên tố từ 2 là: #{count_so_nguyen_to(n)}"