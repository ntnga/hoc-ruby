require "./Chuong_6/lib_arrays"
include Lib_arrays

puts "Nhập số phần tử cho mảng: "
n = gets.chomp.to_i
a = Lib_arrays.tao_mang_ngau_nhien(n)
puts "Array: #{a}"

chia_het = ""
gap_doi = ""
chia_ba = ""

for i in (0..n-2)
  for j in (i+1..n-1)
    #chia hết
    if (a[i]% a[j] == 0 or a[i] % a[j] == 0)
      chia_het += a[i].to_s + " & " + a[j].to_s + ","
    end
    #gap_doi
    if (a[i] / a[j] == 2 and a[i] % a[j] == 0) or (a[j] / a[i] == 2 and a[j] % a[i] == 0)
      gap_doi += a[i].to_s + " & " + a[j].to_s + ","
  end
  # bang 8 
  if (a[i] + a[j] % 3 == 0)
    chia_ba += a[i].to_s + " & " + a[j].to_s + ","
end
end
end

puts "Cặp chia hết: #{chia_het}"
puts "Cặp gấp đôi: #{gap_doi}"
puts "Cặp tổng chia hết cho 3: #{chia_ba}"