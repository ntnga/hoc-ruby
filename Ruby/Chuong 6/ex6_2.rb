array_can = Array['Canh', 'Tân', 'Nhâm', 'Quý', 'Giáp', 'Ất', 'Bính', 'Đinh', 'Mậu', 'Kỷ']
 
array_chi = Array['Thân', 'Dậu', 'Tuất', 'Hợi', 'Tý', 'Sửu', 'Dần', 'Mão', 'Thìn', 'Tỵ', 'Ngọ', 'Mùi']

  def tinh_can(array_can, nam)
    can = nam % 10
    return can = array_can[can]
  end
  
  def tinh_chi(array_chi, nam)
    chi = nam % 12
    return chi = array_chi[chi]
  end
  
  puts 'Nhập năm: '
  nam = gets.chomp.to_i
  
  puts "Năm #{nam} là năm #{tinh_can(array_can, nam)} #{tinh_chi(array_chi, nam)}"