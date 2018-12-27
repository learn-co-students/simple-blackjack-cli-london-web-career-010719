def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
  card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp()
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
2.times do
  deal_card()
  deal_card()
end
display_card_total(deal_card + deal_card)
end

def hit?(num)
  prompt_user()
  input = get_user_input
  if input == 'h'
      new_card = deal_card + num
    end
  elsif input == 's'
    new_card = num
  end
  new_card
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
