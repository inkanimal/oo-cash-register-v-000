class CashRegister
  attr_accessor :total, :discount 
 
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @basket = []
  end
   
  def add_item(item, price, quantity = 1)
    item_specs = {}
    item_specs[:name_of_item] = item
    item_specs[:price] = price
    item_specs[:quantity] = quantity
    @basket << item_specs
    @total += price * quantity
  end
  
  def apply_discount
    if @discount == 0 
      "There is no discount to apply."
    else
      @total -= @total * @discount / 100
      "After the discount, the total comes to $#{@total}."
    end  
  end
  
  def items
     list = []
     @basket.each do |item|
       item.flatten
    end
  end
  
end

 

