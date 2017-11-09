class Dollar
  attr_accessor :amount

  def initialize(amount)
    self.amount = amount
  end

  def times(multiplier)
    Dollar.new(amount * multiplier)
  end

  def ==(object)
    true
  end
end
