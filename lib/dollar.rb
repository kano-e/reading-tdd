require 'money'

class Dollar < Money
  def initialize(amount)
    self.amount = amount
  end

  def times(multiplier)
    Dollar.new(amount * multiplier)
  end

  def ==(dollar)
    amount == dollar.amount
  end
end
