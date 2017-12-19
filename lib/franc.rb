class Franc < Money
  def initialize(amount, currency)
    self.amount = amount
    self.currency = 'CHF'
  end

  def times(multiplier)
    Franc.new(amount * multiplier)
  end
end
