require 'pry'
class CashRegister

attr_accessor :cash_register, :cash_register_with_discount, :total, :discount, :items
  
def initialize(discount=0)
@total = 0
@discount = discount
@items =[]
end

def discount
@discount = 20
end 

def total
@total
end 

def add_item(item_name,price,quantity= 1)
subtotal = price*quantity
 @total += subtotal
 if quantity = 1
 @items << item_name 
 elsif quantity>1
   i=0 
   while i<quantity
   @items << item_name 
   i+=1 
  end
end 
binding.pry
end 

def apply_discount
if @discount == 0
"There is no discount to apply."
else
discount_to_apply = @total*(@discount.to_f/100).to_f
@total -= discount_to_apply
"After the discount, the total comes to $#{@total.to_i}."
end 
end 

def void_last_transaction
  @items.pop
end  

def items
@items
end 

  
end   