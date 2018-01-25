class Money
  attr_accessor :amount

  def self.dollar(amount)
    Dollar.new(amount, 'USD')
  end

  def self.franc(amount)
    Franc.new(amount, 'CHF')
  end

  def initialize(amount, currency)
    self.amount = amount
    self.currency = currency
  end

  def times(multiplier)
    Money.new(amount * multiplier, currency)
  end

  def currency
    @currency
  end

  def ==(money)
    amount == money.amount && currency == money.currency
  end

  private

  attr_writer :currency
end
