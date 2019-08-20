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

def hit?(current_total)
    prompt_user
    user_input = get_user_input
  
  loop do
    if user_input == "h\n" || user_input == "h"
      current_total += deal_card
      return current_total
    elsif user_input == "s\n" || user_input == "s"
      return current_total
    else
      invalid_command
      prompt_user
      user_input = get_user_input
    end
    
    break if current_total >= 21 
  end
  
  #binding.pry
  current_total
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

=begin
def runner
  welcome
  initial_round
  hit?(initial_round)
  display_card_total
  
  while card_total < 21 do
    hit?
    display_card_total
  end
  
  end_game
end
=end