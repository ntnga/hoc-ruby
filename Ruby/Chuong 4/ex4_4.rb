begin
number = rand(1..20)
puts "I'm thinking of a number from 1 to 20. What's it?"
guess_number = gets.chomp.to_i
if (1..20) === guess_number
  until guess_number == number
    if guess_number < number
      puts "Your number is too low.!"
    else
      puts "Your number is too high"
    end
    puts "Please try again.."
    guess_number = gets.chomp.to_i
  end
  puts "Congratulations ! Correct answer!"
else
  puts "Please in put from 1 to 20"
end
puts "Do you want to play one more time? 1: Yes, != 1: No"
i = gets.chomp.to_i
end while i == 1