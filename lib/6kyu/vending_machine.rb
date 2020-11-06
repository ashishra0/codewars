class VendingMachine
  def initialize(items, machine_money)
    @items = items
    @machine_money = machine_money
  end

  def vend(code, money)
    if @items.any? { |item| item.value?(code) }
      if (money < selected_item(code)[:price]) && item_stock(code).positive?
        'Not enough money!'
      elsif item_stock(code).zero?
        "#{item_name(code)}: Out of stock!"
      else
        vend_item(code, money)
      end
    else
      machine_default
    end
  end

  private

  def selected_item(code)
    @items.detect { |item| item[:code] == code }
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

  def vend_item(code, money)
    if change(code, money).zero?
      deplete_stock(code)
      new_stock(code)
      "vending #{item_name(code)}"
    else
      deplete_stock(code)
      new_stock(code)
      "vending #{item_name(code)} with #{change(code, money)} change."
    end
  end

  def machine_default
    "Invalid selection! : Money in vending machine = #{@machine_money}"
  end
end
