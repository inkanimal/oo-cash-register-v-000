class CashRegister
  attr_accessor :total, :discount, :price, :all_items
 
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @all_items = []
  end
   
  def add_item(item, price, quantity = 1)
    @price = price
    if 
    # item_specs = {}
    # item_specs[:name_of_item] = item
    # item_specs[:price] = price
    # item_specs[:quantity] = quantity
    # @all_items << item_specs
    # @total += price * quantity
  end
  
  def apply_discount
    if @discount == 0 
      "There is no discount to apply."
    else
      @total -= @total * @discount / 100
      "After the discount, the total comes to $#{@total}."
    end  
  end
  
  def void_last_transaction
    @total -= @price
  end
end

# class CashRegister
#   attr_accessor :total, :discount, :price, :items

#   def initialize(discount = 0)
#     @total = 0
#     @discount = discount
#     @items = []
#   end

#   def add_item(item, price, quantity = 1)
#     @price = price
#     @total += price * quantity
#     if quantity > 1
#       counter = 0
#       while counter < quantity
#         @items << item
#         counter += 1
#       end
#     else
#       @items << item
#     end
#   end

#   def apply_discount
#     if @discount > 0
#       @to_take_off = (price * discount)/100
#       @total -= @to_take_off
#       return "After the discount, the total comes to $#{total}."
#     else
#       return "There is no discount to apply."
#     end
#   end

#   def void_last_transaction
#     @total -= @price
#   end

# end
 

