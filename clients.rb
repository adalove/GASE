require 'yahoofinance'

class Client
attr_accessor :name, :portfolios, :account, :create_account, :balance
  def initialize(name)
    @name = name
    @portfolios = {}
    @account = {}
  end

  def create_account(name, first_deposit)
    @account[name] = first_deposit
  end

  def balance(name)
    @account[name]
  end

end
