require 'rainbow'
require 'pry'

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
  gets.chomp
end

def add_new_client
  print "Name: "
  name = gets.chomp
  print "Deposit: "
  age = gets.to_i
  # $shelter.animals[name] = Animal.new(name, age, gender, species)
  # $shelter.animals[name].toys = toys
end

def select_buy
  puts "Would you like to use existing or open new portfolio? \n\n".color('#008855')
  puts '1 : Exisitng'.color('#99bb22')
  puts '2 : New'.color('#99bb22')
  puts "B : Back to main menu\n\n".color('#ff0022')
  print '==>> '.color('#ff5544')
  gets.chomp
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
  # $shelter.animals[name] = Animal.new(name, age, gender, species)
  # $shelter.animals[name].toys = toys
  puts "You have bought..."
  gets.chomp
end

def sell_stock_portfolio
  print "Select a share portfolio to sell from: "
  # puts '1 : Exisitng'.color('#99bb22')
  # puts '2 : New'.color('#99bb22')
  portfolio = gets.chomp
end

def sell_stock
  print "Client name: "
  name = gets.chomp
  print "Name of stock: "
  stock_name = gets.chomp
  print "Name of portfolio: "
  portfolio = gets.chomp
  print "Number of shares: "
  volume = gets.to_i
  # $shelter.animals[name] = Animal.new(name, age, gender, species)
  # $shelter.animals[name].toys = toys
  puts "You have sold..."
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
  gets.chomp
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