class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    i = 0
    while i < quantity do
      self.items << title
      i += 1
    end
  end
  
  def apply_discount
    if self.discount == 0
      return "There is no discount to apply."
    end
    self.total -= self.total * self.discount / 100
    return "After the discount, the total comes to $#{self.total}."
  end
  
  def items
    return self.items
  end
end
