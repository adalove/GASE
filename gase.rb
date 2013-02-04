require 'yahoofinance'

class Gase
attr_accessor :name, :accounts, :stocks, :create_account, :buy_sell_shares
 def initialize(name)
  @name = name
  @accounts = {}
  @stocks = stocks
  end

def create_account(name, first_deposit)
  @accounts[name] = first_deposit
end

def buy_sell_shares(stock_name, volume)
  stock_price = YahooFinance::get_quotes(YahooFinance::StandardQuote, stock_name)[stock_name].lastTrade
  value = stock_price.to_f * volume.to_f
end

end
