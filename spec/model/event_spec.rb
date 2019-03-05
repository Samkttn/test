require 'rails_helper'

RSpec.describe Event, type: :model do
  before(:each) do
    @user = User.create(last_name: "samir", first_name: "aurelien", description: "cjdscndsqjcdcdbcdbqchjcbhjbchjqcdq", email: "ausathp@yopmail.com")
    @event = Event.create!(start_date: Faker::Date.forward(30), duration: 60, title: Faker::HarryPotter.location, description: Faker::Lorem.paragraph_by_chars(256, false), price: rand(1..90), location: Faker::Address.city, user_id: User.all.sample.id)

  end

  context "validation" do
    it "is valid with valid attributes" do
      expect(@event).to be_a(Event)
    end
  end

  context "associations" do
    describe "gossip" do
      it "should belongs to gossip" do
        expect(@event.title).to eq(@event.title)
        expect(@event.duration).to eq(60)
      end
    end
  end
end
