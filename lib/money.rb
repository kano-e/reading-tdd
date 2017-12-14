class Money
  attr_accessor :amount

  def ==(money)
    amount == money.amount && self.instance_of?(money.class)
  end
end
