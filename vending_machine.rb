require 'pry-nav'
require 'awesome_print'

class VendingMachine
  def initialize(items, machine_money)
    @items = [{:name=>"Smarties", :code=>"A01", :quantity=>10, :price=>0.60},
     {:name=>"Caramac Bar", :code=>"A02", :quantity=>5, :price=>0.60},
     {:name=>"Dairy Milk", :code=>"A03", :quantity=>1, :price=>0.65},
     {:name=>"Freddo", :code=>"A04", :quantity=>1, :price=>0.25}]
    @machine_money = machine_money
    # binding.pry
  end

  def vend(code, money)
    if @items.any?{|item| item.has_value?(code)}
      user_selected_item = @items.detect { |item| item[:code]==code}
      item_stock = user_selected_item[:quantity]
      change = money - user_selected_item[:price]
      if money < user_selected_item[:price] and item_stock > 0
        puts "Not enough money!"
      else
        puts "vending #{user_selected_item[:name]} with #{change} change." and item_stock
      end
      puts "#{user_selected_item[:name]}: Out of stock!" if item_stock==0
      # keeping track of stock and machine_money
      user_selected_item[:quantity] += 1
      machine_money = @machine_money
    else
      puts "Invalid selection! : Money in vending machine = #{@machine_money}"
    end
  end
end

obj = VendingMachine.new(@items, 11.20)
# puts obj.vend("A01", 10.50)
# puts obj.vend("A07", 9.50)
ap obj.vend("z09", 10.00)
