def tinh_GTBT(x,y)
  begin
    if (2 * x + 7 * y) == 0
      raise ZeroDivisionError, 'Số chia phải khác 0'
    elsif ((5 * x -y) / ( 2 * x + 7 * y)) < 0
      raise Math::DomainError, "Căn phải lớn hơn 0"
    else
      puts "sqrt((5 * x - y) / (2 * x + 7 * y)) = #{Math::sqrt((5 * x - y) / (2 * x + 7))}"
    end
  rescue ZeroDivisionError, Math::DomainError => e
    puts "Lỗi: #{e.message}"
  end
end

puts "Nhập x:"
x = gets.chomp.to_f
puts "Nhập y: "
y = gets.chomp.to_f
tinh_GTBT(x,y)