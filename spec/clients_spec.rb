require_relative 'spec_helper'
require_relative '../clients'

describe Client do
let(:client) {Client.new("Bob")} #this allows same code below to be removed so less duplication

  describe ".new" do
    it "creates a Client object" do #'it' is the first test
      expect(clint).to_not eq nil
    end
    # it "has no accounts" do
    #   expect(bank.accounts.count).to eq 0
    # end
  end
end
