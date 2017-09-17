loop do
  
  options = ["rock", "paper", "scissors"]
  computer = options[rand(options.length)]

  puts "Choose from 'rock', 'paper' or 'scissors':(Type 'exit' to quit the game)"
  user_input = gets.chomp.downcase
  
  while !(user_input == "rock" || user_input == "paper" || user_input == "scissors")
    if user_input == "exit"
      abort
    else
      puts "Invalid choice. Enter rock, paper, or scissors"
      puts "What's your choice?"
      user_input = gets.chomp.downcase
    end
  end 
  if (user_input == "rock" || user_input == "paper" || user_input == "scissors")
    if (user_input == computer)
      puts "We got the same, let's keep playing!"
    elsif (user_input == "rock" && computer == "scissors")
      puts "computer choice is: " + computer + " , you win! :)"
    elsif (user_input == "rock" && computer == "paper")
      puts "computer choice is: " + computer + " ,computer wins :("
    elsif (user_input == "paper" && computer == "scissors")
      puts "computer choice is: " + computer + " ,computer wins :("
    elsif (user_input == "paper" && computer == "rock")
      puts "computer choice is: " + computer + " , you win! :)"
    elsif (user_input == "scissors" && computer == "rock")
      puts "computer choice is: " + computer + " ,computer wins :("
    elsif (user_input == "scissors" && computer == "paper")
      puts "computer choice is: " + computer + " , you win! :)"
    end
  puts "Wanna play again? (yes/no)"
  answer = gets.chomp.downcase
  break if answer == "no"
  end
end