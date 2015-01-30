require 'spec_helper'

describe Band do
  it { should have_and_belong_to_many :venues }
end

describe Band do
  it 'prevents input of empty band name' do
    test = Band.create(name: "")
    expect(test.valid?).to eq false
  end
end

describe Band do
  it 'capitalizes first letter of band name' do
    test = Band.create(name: "blur")
    expect(test.name).to eq "Blur"
  end
end