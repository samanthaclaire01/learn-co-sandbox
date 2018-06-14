require "colorize" 
def surfshop
  puts "Welcome to Kode's Up Surf Shop!".upcase.light_blue
  sleep(1.5)
  
  puts "Swim suit: $24.99"
  puts "Flip flops: $9.99"
  puts "Surfboard: $90.00"
  puts "Wetsuit: $100.00"
  sleep(1.5)
  
  swim_suit_cost = 24.99
  flip_flop_cost = 9.99
  surfboard_cost = 90.00
  wetsuit_cost = 100.00
  
  puts "How many swimsuits would you like? If none, put 0.".light_magenta
  swim_suit = gets.chomp.to_f
  puts "How many flip flops would you like?".light_magenta
  flip_flop = gets.chomp.to_f
  puts "How many surfboards would you like to buy?".light_magenta
  surfboard = gets.chomp.to_f
  puts "How many wetsuits would you like to buy?".light_magenta
  wetsuit = gets.chomp.to_f
 
  swim_suit_total = swim_suit * swim_suit_cost
  flip_flop_total = flip_flop * flip_flop_cost
  surfboard_total = surfboard * surfboard_cost
  wetsuit_total = wetsuit * wetsuit_cost
  
  total = swim_suit_total + flip_flop_total + surfboard_total + wetsuit_total
  puts "Your total is $#{total}🏄️".cyan
  puts "Do you want to buy a surfing lesson for $50 and get 20% off your purchase?"
  answer = gets.chomp.upcase
  if answer == "YES"
    total += 50
    new_total = (total/5)
    new_total = total - new_total
    puts "Your new total is $#{new_total.round(2)}".cyan
    
    puts "Would you like to pay with cash or card?"
  payment = gets.chomp.upcase
  if payment == "CASH"
    puts "How much?"
    cash = gets.chomp.to_f 
    if cash > new_total 
      puts "Would you like to donate a portion to charity?"
      charity_cash = gets.chomp.upcase
    elsif cash == new_total 
      puts "Thank you, have a good day🌊".light_blue
    else
    puts "Insufficient payment.".light_red
    end
    if charity_cash == "YES"
      puts "How much?"
      charity = gets.chomp.to_i 
      if charity < 10 
        puts "Thank you, have a good day🌊".light_blue
      elsif charity > 10
       puts "We really appreciate the support, your donation means a lot to us. Have a good day🌊".light_blue
      end
    elsif charity_cash == "NO"
      puts "Ok, hope to see you again soon🌊".light_blue
    end
    elsif payment == "CARD"
      puts "Would you like to donate to charity?"
      charity_card = gets.chomp.upcase
      if charity_card == "YES"
      puts "How much?"
      charity = gets.chomp.to_i 
      if charity < 10 
        puts "Thank you, have a good day🌊".light_blue
      elsif charity > 10
       puts "We really appreciate the support, your donation means a lot to us,. Have a good day🌊".light_blue
      end
      elsif charity_card == "NO"
      puts "Ok, hope to see you again soon🌊".light_blue
    end
    end
  else
    puts "Your total remains $#{total}".cyan
    
    puts "Would you like to pay with cash or card?"
    payment = gets.chomp.upcase
    if payment == "CASH"
    puts "How much?"
    cash = gets.chomp.to_f 
    if cash > total 
      puts "Would you like to donate a portion to charity?"
      charity_cash = gets.chomp.upcase
    elsif cash == total 
      puts "Thank you, have a good day🌊".light_blue
    else
    puts "Insufficient payment.".light_red
    end
    if charity_cash == "YES"
      puts "How much?"
      charity = gets.chomp.to_i 
      if charity < 10 
        puts "Thank you, have a good day🌊".light_blue
      elsif charity > 10
       puts "We really appreciate the support, your donation means a lot to us. Have a good day🌊".light_blue
      end
    elsif charity_cash == "NO"
      puts "Ok, hope to see you again soon🌊".light_blue
    end
    elsif payment == "CARD"
      puts "Would you like to donate to charity?"
      charity_card = gets.chomp.upcase
      if charity_card == "YES"
      puts "How much?"
      charity = gets.chomp.to_i 
      if charity < 10 
        puts "Thank you, have a good day🌊".light_blue
      elsif charity > 10
       puts "We really appreciate the support, your donation means a lot to us,. Have a good day🌊".light_blue
      end
      elsif charity_card == "NO"
      puts "Ok, hope to see you again soon🌊".light_blue
    end
    end
  end
  
end
surfshop