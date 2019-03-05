require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.create(last_name: "samir", first_name: "aurelien", description: "cjdscndsqjcdcdbcdbqchjcbhjbchjqcdq", email: "ausathp@yopmail.com")
  end

  context "validation" do
    it "is valid with valid attributes" do
      expect(@user).to be_a(User)
    end
  end

  context "associations" do
    describe "gossip" do
      it "should belongs to gossip" do
        expect(@user.first_name).to eq("aurelien")
        expect(@user.last_name).to eq("samir")
      end
    end
  end
end
