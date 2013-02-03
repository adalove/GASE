require_relative 'spec_helper'
require_relative '../gase'
require 'yahoofinance'

describe Gase do
let(:gase) {Gase.new("GASE")} #this allows same code below to be removed so less duplication


  describe ".new" do
    it "creates a Gase object" do
      gase = Gase.new('GASE')
      expect(gase).to_not eq nil
    end
    it "has no accounts" do
      expect(gase.accounts.count).to eq 0
    end
    it "has no stocks on the list" do
      expect(gase.stocks).to eq nil
    end

  end

  describe ".new" do
    it "has a name" do
      gase = Gase.new('GASE')
      expect(gase.name).to eq 'GASE'
    end
  end

describe "#buy_sell_shares" do
   it "gets the current share price using yahoofinance" do
    gase.buy_sell_shares("AAPT", 100)
    expect(gase.buy_sell_shares("AAPT", 100)).to eq ((YahooFinance::get_quotes(YahooFinance::StandardQuote, "AAPT")["AAPT"].lastTrade) * 100)
  end
end

end