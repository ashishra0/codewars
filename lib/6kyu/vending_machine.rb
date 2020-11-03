class VendingMachine
  def initialize(items, machine_money)
    @items = items
    @machine_money = machine_money
  end

  def vend(code, money)
    if @items.any?{|item| item.has_value?(code)}
      if money < selected_item(code)[:price] and item_stock(code) > 0
        "Not enough money!"
      elsif item_stock(code) == 0
          "#{item_name(code)}: Out of stock!"
      else
        if change(code, money) == 0.0
          deplete_stock(code)
          new_stock(code)
          "vending #{item_name(code)}"
        else
          deplete_stock(code)
          new_stock(code)
          "vending #{item_name(code)} with #{change(code, money)} change."
        end
      end
    else
       "Invalid selection! : Money in vending machine = #{@machine_money}"
    end
  end

  private

  def selected_item(code)
    @items.detect { |item| item[:code]==code}
  end

  def item_stock(code)
    selected_item(code)[:quantity]
  end

  def change(code, money)
      money - selected_item(code)[:price]
  end

  def item_name(code)
    selected_item(code)[:name]
  end

  def deplete_stock(code)
    item = @items.find { |i| i[:code] == code }
    item[:quantity] -= 1
  end

  def new_stock(code)
    item = @items.find { |i| i[:code] == code }
    item[:quantity] += 1
  end
end
