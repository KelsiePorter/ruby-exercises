require 'rspec'
require_relative '../lib/candy'

RSpec.describe Candy do
  it 'has a type' do
    candy = Candy.new('Skittles')

    expect(candy.type).to eq('Skittles')
  end

  it 'has a different kind of candy' do
    candy = Candy.new('Snickers')
    candy2 = Candy.new("Mars")

    expect(candy.type).to eq('Snickers')
    expect(candy2.type).to eq("Mars")
  end
end
