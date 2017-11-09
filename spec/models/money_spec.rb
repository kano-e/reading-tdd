require 'dollar'

RSpec.describe 'Money Test', type: :model do
  it 'Test Multiplication' do
    five = Dollar.new(5)
    product = five.times(2)
    expect(product.amount).to eq 10
    product = five.times(3)
    expect(product.amount).to eq 15
  end
end
