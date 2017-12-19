class Franc < Money
  def initialize(amount, currency)
    self.amount = amount
    self.currency = currency
  end

  def times(multiplier)
    Money.franc(amount * multiplier)
  end
end
