require 'spec_helper'

describe Venue do
  it { should have_and_belong_to_many :bands }
end

describe Venue do
  it 'prevents input of empty venue name' do
    test = Venue.create(name: "")
    expect(test.valid?).to eq false
  end
end

describe Venue do
  it 'capitalizes first letter of venue name' do
    test = Venue.create(name: "rose quarter")
    expect(test.name).to eq "Rose Quarter"
  end
end