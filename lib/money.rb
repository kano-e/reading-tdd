class Money
  attr_accessor :amount

  def self.dollar(amount)
    Dollar.new(amount)
  end

  def self.franc(amount)
    Franc.new(amount, nil)
  end

  def times(multipiler)
    raise NotImplementedError, "This #{self.class} cannot respond to:"
  end

  def currency
    @currency
  end

  def ==(money)
    amount == money.amount && self.instance_of?(money.class)
  end

  private

  attr_writer :currency
end
