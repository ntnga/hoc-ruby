class NhacCu
  def initialize
    raise 'Nhac Cu Class !!'
  end 
  
  def choi_nhac
    raise 'choi nhac abstract method!!'
  end
end

class Guitar < NhacCu
  def initialize
    @so_day = 6
  end
  def choi_nhac
    puts "Người choi tạo ra âm thanh bằng cách gảy lên #{@so_day} dây đàn"
  end
end

nga = Guitar.new
nga.choi_nhac