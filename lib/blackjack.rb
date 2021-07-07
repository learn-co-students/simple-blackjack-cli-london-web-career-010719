def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(1..11)
  card
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  answer = gets.chomp
  answer
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  

   card1 = deal_card
   card2 = deal_card
  total = card1 + card2
  display_card_total(total)
  
  return total
  
end

def hit?(current_total)
  # code hit? here
  prompt_user
  input = get_user_input
  
  if input == 'h'
      current_total += deal_card
   elsif input == 's'
        current_total
   else
    invalid_command
   end
 
 return current_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
 
  
  welcome
  current_total = initial_round
  
  until current_total > 21
      current_total = hit?(current_total)
      display_card_total(current_total)
 end
  
  end_game(current_total)
  
end
    
