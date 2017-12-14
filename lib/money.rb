class Money
  attr_accessor :amount

  def self.dollar(amount)
    Dollar.new(amount)
  end

  def times(multipiler)
    raise NotImplementedError, "This #{self.class} cannot respond to:"
  end

  def ==(money)
    amount == money.amount && self.instance_of?(money.class)
  end
end
