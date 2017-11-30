class Money
  attr_accessor :amount

  def ==(money)
    amount == money.amount
  end
end
