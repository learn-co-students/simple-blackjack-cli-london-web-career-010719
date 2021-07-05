def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total (oldhand)
  # code #display_card_total here
  puts "Your cards add up to #{oldhand}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game (oldhand)
  # code #end_game here
  puts "Sorry, you hit #{oldhand}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  fullhand = card1 + card2
  display_card_total(fullhand)
  fullhand
end

def hit? (oldhand)
  # code hit? here
  prompt_user
  answer = get_user_input
  if answer == "h"
    newcard = deal_card
  elsif answer == "s"
    newcard = 0
  else invalid_command
  end
  newhand = oldhand + newcard
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  existinghand = initial_round
  while existinghand <=21 do
    existinghand = hit? (existinghand)
    display_card_total(existinghand)
  end
end_game (existinghand)
end
