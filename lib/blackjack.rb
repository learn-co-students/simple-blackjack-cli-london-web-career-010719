def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(score)
  puts "Sorry, you hit #{score}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

def hit?(current_score)
  prompt_user
  user_input = get_user_input

  case user_input
  when "s"
    return current_score
  when "h"
    return current_score + deal_card
  else
    invalid_command
    prompt_user
    return current_score
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  current_score = initial_round

  until current_score > 21
    current_score = hit?(current_score)
    display_card_total(current_score)
  end
  end_game(current_score)

end
