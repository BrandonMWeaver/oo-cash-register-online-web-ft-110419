class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @item_prices = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    i = 0
    while i < quantity do
      @items << title
      @item_prices << price
      i += 1
    end
  end
  
  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    end
    @total -= @total * @discount / 100
    return "After the discount, the total comes to $#{@total}."
  end
  
  def items
    return @items
  end
  
  def void_last_transaction
    @items.pop
    total -= @item_prices.pop
  end
end
