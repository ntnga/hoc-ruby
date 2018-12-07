class GiaiPhuongTrinhBacNhat
  def initialize(a,b)
    @a = a
    @b = b
  end
  
  def tinh_nghiem
    ket_qua = ""
    if @a == 0 and @b != 0
      ket_qua = "Phương trình vô nghiệm"
    elsif @a == 0 and @b == 0
      ket_qua = "Phuong trình vô số nghiệm"
    else
      ket_qua = (-@b / @a).to_s
    end
    return ket_qua       
   end
   
   def to_s
     return "Kết quả: " + tinh_nghiem()
   end
end

#----------------------------

# khai bao doi tuong
continue = 0
begin 
puts "Giải phương trình bậc nhất : ax + b = 0"
print("Nhập a:")
a = gets.chomp.to_f
print("Nhập b: ")
b = gets.chomp.to_f
pt = GiaiPhuongTrinhBacNhat.new(a,b)
puts pt
puts "Tính tiếp? 1: Yes, !=: No"
continue = gets.chomp.to_i
end while continue == 1
