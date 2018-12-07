print ("Nhập số: " )
x = gets.chomp.to_i
count = 0
i = 2
check = 0
for i in i...x
  # kiểm tra chia hết hay không, nếu bằng 0 thì sẽ không phải là số nguyên tố
  if x % i == 0
    check = 0
 break
  end
  
  
end