require 'money'

class Dollar < Money
  def initialize(amount)
    self.amount = amount
    @currency = 'USD'
  end

  def times(multiplier)
    Dollar.new(amount * multiplier)
  end

  def currency
    @currency
  end
end
