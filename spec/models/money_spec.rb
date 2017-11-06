require 'dollar'

RSpec.describe 'Money Test', type: :model do
  it 'Test Multiplication' do
    five = Dollar.new(5)
    five.times(2)
    expect(five.amount).to eq 10
  end
end
