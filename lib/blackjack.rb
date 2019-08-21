require "pry"

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
 gets.strip
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  #binding.pry
  
  if user_input == "h\n" || user_input == "h"
    #binding.pry
    card_total += deal_card
     #binding.pry
    display_card_total(card_total)
    return card_total
  elsif user_input == "s\n" || user_input == "s"
    return card_total
  else
    invalid_command
    #binding.pry
    prompt_user
    user_input = get_user_input
    return card_total
  end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  
  until card_total > 21 do
    card_total = hit?(card_total)
  end
  
  end_game(card_total)
end

#runner