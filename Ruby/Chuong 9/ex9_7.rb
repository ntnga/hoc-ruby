class NhacCu
  def initialize(ten)
    @ten = ten
  end
  
  def choi_nhac
    raise 'Chơi nhạc abstract method!'
  end
end

class NhacCuCoDay < NhacCu
  def initialize(ten,so_day)
    super(ten)
    @so_day = so_day
  end
    
   def choi_nhac
      puts "Với #{@ten}, người dùng sẽ tác động lên #{@so_day} dây đàn. \n"
    end
end

class NhacCuKhongDay < NhacCu
  def initialize(ten, nguon_phat)
    super(ten)
    @nguon_phat = nguon_phat
  end 
  
  def choi_nhac
    puts "Với #{@ten}, người dùng sẽ tác động lên #{@nguon_phat}"
  end
end

#---------------------
begin 
  cont = 1
print("Bạn chọn loại nhạc cụ nào? 1:Có dây, 2:Không dây \n ")
loai = gets.chomp.to_i
if loai == 1 # có dây
  print("Tên nhạc cụ:  \n")
  ten = gets.chomp
  print("Số dây:  \n")
  so_day = gets.chomp.to_i
  nhac_cu = NhacCuCoDay.new(ten,so_day)
  nhac_cu.choi_nhac()
  
else # khong dây
  print("Tên nhạc cụ:  \n")
  ten = gets.chomp
  print("Nguồn phát âm thanh:  \n")
  nguon_phat = gets.chomp
  nhac_cu =NhacCuKhongDay.new(ten,nguon_phat)
  nhac_cu.choi_nhac()
  
end
puts "Bạn có muốn tiếp tục? 1: Có 2: Không \n"
cont = gets.chomp.to_i
end while cont == 1

puts "Kết thúc"