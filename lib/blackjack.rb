def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  newCard = 1 + rand(11)
  return newCard
end

def display_card_total(cardTotal)
  puts "Your cards add up to #{cardTotal}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(cardTotal)
  puts "Sorry, you hit #{cardTotal}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def hit?(cardTotal)
  prompt_user
  input = get_user_input
  if input == "h"
    cardTotal = deal_card + cardTotal
  elsif input == "s"
    cardTotal
  end
  cardTotal
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  # initial_round
  cardTotal = initial_round
  until cardTotal > 21
    cardTotal = hit? cardTotal
    display_card_total cardTotal
  end
  end_game cardTotal
end
