require 'dollar'
require 'franc'

RSpec.describe 'Money Test', type: :model do
  it 'Test Multiplication' do
    five = Money.dollar(5)
    expect(five.times(2)).to eq Money.dollar(10)
    expect(five.times(3)).to eq Money.dollar(15)
  end

  it 'Test Equality' do
    expect(Money.dollar(5)).to eq Money.dollar(5)
    expect(Money.dollar(5)).not_to eq Money.dollar(6)
    expect(Money.franc(5)).to eq Money.franc(5)
    expect(Money.franc(5)).not_to eq Money.franc(6)
    expect(Money.franc(5)).not_to eq Money.dollar(5)
  end

  it 'Test Franc Multiplication' do
    five = Money.franc(5)
    expect(five.times(2)).to eq Money.franc(10)
    expect(five.times(3)).to eq Money.franc(15)
  end

  it 'Test #currency' do
    expect(Money.dollar(1).currency).to eq 'USD'
    expect(Money.franc(1).currency).to eq 'CHF'
  end

  it 'Test Different Class Equality' do
    expect(Money.new(10, 'CHF')).to eq Franc.new(10, 'CHF')
  end
end
