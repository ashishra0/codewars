require 'pry-nav'
require 'awesome_print'

class VendingMachine
  def initialize(items, machine_money)
    @items = [{:name=>"Smarties", :code=>"A01", :quantity=>10, :price=>0.60},
     {:name=>"Caramac Bar", :code=>"A02", :quantity=>5, :price=>0.60},
     {:name=>"Dairy Milk", :code=>"A03", :quantity=>1, :price=>0.65},
     {:name=>"Freddo", :code=>"A04", :quantity=>1, :price=>0.25}]
    @machine_money = machine_money
  end

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

  def new_stock(code)
    selected_item(code)[:quantity]+=1
  end

  def vend(code, money)
    if @items.any?{|item| item.has_value?(code)}
      if money < selected_item(code)[:price] and item_stock(code)>0
        puts "Not enough money!"
      else
        puts "vending #{item_name(code)} with #{change(code, money)} change." and item_stock(code)
      end
        puts "#{item_name(code)}: Out of stock!" if item_stock(code)==0
        new_stock(code)
    else
       puts "Invalid selection! : Money in vending machine = #{@machine_money}"
    end
  end
end

obj = VendingMachine.new(@items, 11.20)
ap obj.vend("A04", 0.10)
