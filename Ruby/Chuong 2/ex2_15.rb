require 'date'
time1 = Time.new
year = time1.year
puts "nhập tuổi của bạn:"
age = gets.chomp.to_i
year_100 = (year - age) + 100
puts "Năm bạn 100 tuổi : #{year_100}"