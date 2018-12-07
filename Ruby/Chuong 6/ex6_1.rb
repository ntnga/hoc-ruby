def find_fruits(fruits, fruit)
  if fruits.include?(fruit)
    p " We have #{fruit}"
  else
    p "We not have #{fruit}"
  end
end

fruits = ['apple', 'pear', 'grapes', 'banana', 'cherry', 'kiwi', 'jackfruit', 'strawberry']
  puts "List of fruits : #{fruits}"
  puts "Number of fruits : #{fruits.length}"
  puts "What do you want to find?"
  fruit = gets.chomp
  find_fruits(fruits, fruit)
 
