def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand_num = 1 + rand(11)
  return rand_num
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
    prompt_user = gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
  # code #initial_round here
end


def hit?(card_total)

  prompt_user
  input = get_user_input

  if input == 's'
    return card_total
    
  elsif input == 'h'
    ct = card_total + deal_card
    return ct
    
  else 
    puts #invalid_command
  # code hit? here
  
  end
end


def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  value = initial_round
    until value > 21
      value = hit?(value)
      display_card_total(value)
    end
  end_game(value)
end 

    
