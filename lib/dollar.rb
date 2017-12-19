require 'money'

class Dollar < Money
  def initialize(amount, currency)
    self.amount = amount
    self.currency = currency
  end

  def times(multiplier)
    Money.dollar(amount * multiplier)
  end
end
