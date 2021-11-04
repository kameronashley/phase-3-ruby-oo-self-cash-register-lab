require 'pry'

class CashRegister 
  attr_accessor :discount , :total 
  
  def initialize discount = 0 
    @total = 0
    @discount = discount
  end

  

    def add_item (title , price, quantity = 1)
      @title = title
      @price = price
      @quantity = quantity
      @total = total + price * quantity
    end
    
    def apply_discount 
      @total -= (@discount/100.0) * @total
      if @total > 0
      "After the discount, the total comes to $#{@total.to_i}."
      end
    end  
end 

