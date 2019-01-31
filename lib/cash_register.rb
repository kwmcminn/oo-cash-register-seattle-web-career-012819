class CashRegister

  attr_accessor :discount, :total, :items, :last_item

  def initialize(discount = 0)
    @total = 0.00
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
      @total = self.total + (price * quantity)
        quantity.times do @items << title
        end
      @last_item = @total

  end

  def apply_discount
    if @discount > 0
        @total *= 1.00 - (@discount.to_f / 100)
        "After the discount, the total comes to $#{@total.to_i}."
      else
        "There is no discount to apply."
      end
  end

  def void_last_transaction
      self.total -= @last_item
  end
end
