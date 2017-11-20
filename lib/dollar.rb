class Dollar
  def initialize(amount)
    self.amount = amount
  end

  def times(multiplier)
    Dollar.new(amount * multiplier)
  end

  def ==(dollar)
    amount == dollar.amount
  end

  private
  attr_accessor :amount
end
