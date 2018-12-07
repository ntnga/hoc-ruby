puts "Input s1:"
s1 = gets.chomp
puts "Input s2:"
s2 = gets.chomp
puts "Input s3"
s3 = gets.chomp
puts "Input index:"
index = gets.chomp.to_i
s4 = s1[index..s1.size]
puts "Length of s1: #{s1.length}"
puts "Length of s2: #{s2.length}"
puts "Length of s3: #{s3.length}"
puts "#{s4}"
puts "s2 repeats 2 times : #{s2*2}"
