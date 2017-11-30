class Franc < Money
  def initialize(amount)
    self.amount = amount
  end

  def times(multiplier)
    Franc.new(amount * multiplier)
  end

  def ==(franc)
    amount == franc.amount
  end
end
