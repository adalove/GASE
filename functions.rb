require 'rainbow'
require 'pry'
require_relative 'gase'
require_relative 'clients'
require_relative 'portfolios'


$account_list = {"Greg" => 350, "Frank" => 400, "Sue" => 600}
c1 = Client.new("Jimmy")




def menu
  puts `clear`
  puts "GASE - General Assembly Stock Exchange \n\n".color('#008855')
  puts '1 : Exisitng Client'.color('#99bb22')
  puts '2 : New Client'.color('#99bb22')
  puts '3 : Admin'.color('#99bb22')
  puts "Q : Quit\n\n".color('#ff0022')
  print '==>> '.color('#ff5544')
  gets.chomp
end

def existing_client
  puts `clear`
  puts "Select an option \n\n".color('#008855')
  puts '1 : Buy shares'.color('#99bb22')
  puts '2 : Sell shares'.color('#99bb22')
  puts '3 : View information'.color('#99bb22')
  puts "B : Back to main menu\n\n".color('#ff0022')
  print '==>> '.color('#ff5544')
  response = gets.chomp
  # while response != 'Q'
    case response
    when '1' then buy_stock; gets
    when '2' then sell_stock; gets
    when '3' then view_by_client
    when 'B' then menu
  # end
  # response = menu
  end
end

def add_new_client
  print "Name: "
  name = gets.chomp
  print "Deposit: "
  first_deposit = gets.to_f
  $account_list[name] = first_deposit
  puts "Thank you #{name}, your account now has $#{first_deposit}."
  gets
  menu
end

def select_buy
  puts `clear`
  puts "Would you like to use existing or open new portfolio? \n\n".color('#008855')
  puts '1 : Exisitng'.color('#99bb22')
  puts '2 : New'.color('#99bb22')
  puts "B : Back to main menu\n\n".color('#ff0022')
  print '==>> '.color('#ff5544')
  response = gets.chomp
    case response
    when '1' then portfolio_existing; gets
    when '2' then portfolio_new; gets
    when 'B' then menu
    end
end

def portfolio_existing
end

def portfolio_new
end

def buy_stock
  print "Client name: "
  name = gets.chomp
  print "Name of stock: "
  stock_name = gets.chomp
  print "Name of portfolio: "
  portfolio = gets.chomp
  print "Number of shares: "
  volume = gets.to_i
  # $account_list(name) =
  puts "You have bought..."
  gets.chomp
end

# def sell_stock_portfolio
#   print "Select a share portfolio to sell from: \n\n".color('#008855')
#   # puts '1 : Exisitng'.color('#99bb22')
#   # puts '2 : New'.color('#99bb22')
#   portfolio = gets.chomp
# end

def sell_stock
  print "Client name: "
  name = gets.chomp
  print "Name of stock: "
  stock_name = gets.chomp
  print "Name of portfolio: "
  portfolio = gets.chomp
  print "Number of shares: "
  volume = gets.to_i
  value = buy_sell_shares(stock_name, volume)
  puts "You have sold #$#{value} worth of shares."
  gets.chomp
end

def admin
  puts `clear`
  puts "Select from admin options: \n\n".color('#008855')
  puts '1 : Client name list'.color('#99bb22')
  puts '2 : Share list by client name'.color('#99bb22')
  puts '3 : List all clients and their shares'.color('#99bb22')
  puts "B : Back to main menu\n\n".color('#ff0022')
  print '==>> '.color('#ff5544')
  response = gets.chomp
  case response
  when '1' then client_list; gets
  when '2' then view_by_client; gets
  when '3' then view_all; gets
  when 'B' then menu
  end
end

def view_by_client
  puts "Client name: \n\n".color('#008855')
  name = gets.chomp
  #list all details by client name
end

def view_all
end

def client_list
end