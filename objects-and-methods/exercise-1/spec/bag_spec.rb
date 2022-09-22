require 'rspec'
require_relative '../lib/bag'
require_relative '../lib/candy'
require 'pry'

RSpec.describe Bag do
  it 'is empty' do
    expect(Bag.new.empty?).to be true
  end

  it 'can count the candy in an empty bag' do
    expect(Bag.new.count).to eq(0)
  end

  it 'has no candies when it is empty' do
    expect(Bag.new.candies).to eq([])
  end

  it 'can put a candy in a bag' do
    bag = Bag.new

    candy = Candy.new('Sour frogs')

    bag.place_candy(candy)

    expect(bag.candies).to eq([candy])
  end

  it 'is not empty when it has candies' do
    bag1 = Bag.new
    bag1.place_candy(Candy.new("Nerds"))
    expect(bag1.empty?).to be false
  end

  it 'can count candies' do
    bag1 = Bag.new
    bag1.place_candy(Candy.new("Caramelized Almonds"))

    expect(bag1.count).to eq(1)
  end

  it 'contains candies and candies have a type' do
    bag1 = Bag.new
    bag1.place_candy(Candy.new("Hershey's Kisses"))

    type = bag1.candies.first.type

    expect(type).to eq("Hershey's Kisses")
  end

  it 'can be asked if it has a particular kind of candy' do
    bag1 = Bag.new
    bag1.place_candy(Candy.new("Lindt chocolate"))

    expect(bag1.contains?('Lindt chocolate')).to be true
    expect(bag1.contains?('Nerds')).to be false
  end
end
