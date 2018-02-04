class CashRegister
<<<<<<< HEAD
  attr_accessor :total, :discount, :items, :last_transaction
=======
  attr_accessor :total, :discount, :items
>>>>>>> 6eecd4631b7d2afacfacbbfdb14d575cb9f6ca95
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity=1)
    self.total += price * quantity
<<<<<<< HEAD
    quantity.times do
      @items << title
    end
    self.last_transaction = price * quantity
=======
    @items << title
>>>>>>> 6eecd4631b7d2afacfacbbfdb14d575cb9f6ca95
  end
  
  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
<<<<<<< HEAD
    @items
  end
  
  def void_last_transaction
    self.total = self.total - self.last_transaction
=======
    items
>>>>>>> 6eecd4631b7d2afacfacbbfdb14d575cb9f6ca95
  end
  
end