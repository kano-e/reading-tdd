class Money
  attr_accessor :amount

  def self.dollar(amount)
    Dollar.new(amount)
  end

  def ==(money)
    amount == money.amount && self.instance_of?(money.class)
  end
end
