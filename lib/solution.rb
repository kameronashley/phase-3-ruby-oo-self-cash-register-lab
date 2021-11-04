require 'pry'

class CashRegister  
  attr_reader :discount, :items, :last_item_total
  attr_accessor :total  

  def initialize(employee_discount = 0)
    @total = 0
    @discount = employee_discount
    @items = []
    @last_item_total = 0
  end


  def add_item(title, price, quantity=1)
    quantity.times do
      self.items << title
    end
    self.last_item_total = price * quantity
    self.total = self.total + price * quantity
  end

  def apply_discount
    if self.discount == 0
      return "There is no discount to apply."
    end
    amount_to_remove = self.total * (discount / 100.to_f)
    self.total = self.total - amount_to_remove
    "After the discount, the total comes to $#{total.to_i}."
  end

  def void_last_transaction
    self.total = self.total - last_item_total
  end


end