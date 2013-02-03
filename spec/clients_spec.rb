require_relative 'spec_helper'
require_relative '../clients'

describe Client do
let(:client) {Client.new("Bob")} #this allows same code below to be removed so less duplication


  describe ".new" do
    it "creates a Client object" do
      # client = Client.new("Bob")
      expect(client).to_not eq nil
    end
    it "has no portfolios" do
      expect(client.portfolios.count).to eq 0
    end
  end

describe ".new" do
  it "has a name" do
    # client = Client.new("Bob")
    expect(client.name).to eq "Bob"
  end
end

  describe "#create_account" do
    it "create an account" do
      client.create_account("Sally", 200)
      expect(client.account["Sally"]).to eq 200
    end
  end

  describe "#balance" do
    it "returns the balance for the client" do
      client.create_account("Sally", 300)
      expect(client.balance("Sally")).to eq 300
    end
  end

  # describe "#buy" do
  #   it "buys shares for client and adds to their account" do
  #     client.create_account("Sally", 300)
  #     value = buy(100.00, 3)
  #     expect(Client.account["Sally"]).to eq 600
  #   end
  # end


end
