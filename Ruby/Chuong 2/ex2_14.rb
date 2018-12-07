puts "Input s:"
s = gets.chomp
puts "Length of s: #{s.length}"
puts "Input search character::"
c_search = gets.chomp
puts "#{c_search} appears #{s.count(c_search)} time in s"
puts "Input insert character:"
c_insert = gets.chomp
puts "Input index to insert:"
index = gets.chomp.to_i
s = s.insert(index, c_insert)
puts "s now: #{s}"
s2 = s.upcase
puts "s2: #{s2}"
s3 = s2.capitalize
puts "s3: #{s3}"
s4 = s.reverse
puts "s4: #{s4}"
puts "s4 lower case: #{s4.downcase}"
puts "Input s_old:"
s_old = gets.chomp
puts "Input s_new:"
s_new = gets.chomp
puts "s before: #{s}"
puts "s after: #{s.gsub(s_old, s_new)}"

