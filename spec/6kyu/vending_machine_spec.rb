require_relative '../../lib/6kyu/vending_machine.rb'

RSpec.describe VendingMachine do

  let(:items) { [{:name=>"Smarties", :code=>"A01", :quantity=>10, :price=>0.60},
  {:name=>"Caramac Bar", :code=>"A02", :quantity=>5, :price=>0.60},
  {:name=>"Dairy Milk", :code=>"A03", :quantity=>0, :price=>0.65},
  {:name=>"Freddo", :code=>"A04", :quantity=>1, :price=>0.25}] }

  let(:money) { 11.20 }

  let(:obj) {VendingMachine.new(items, money)}

  context 'valid scenario' do
    it 'should initialize with arguments' do
      expect(obj).to be_an_instance_of(VendingMachine)
    end

    context 'money is less than item cost' do
      it "should return 'Not enough money!'" do

        expect(obj.vend('A04', 0.10)).to eq('Not enough money!')
      end

      context 'item quantity is zero' do
        it "should return 'Item Name: Out of stock!'" do

          expect(obj.vend('A03', 0.70)).to eq('Dairy Milk: Out of stock!')
        end
      end

      context 'valid item selection' do
        it "returns Vending Item Name with calculated change." do

          expect(obj.vend('A04', 0.50)).to eq('vending Freddo with 0.25 change.')
        end

        it "should update item quantity" do
          obj.vend('A04', 0.50)

          expect(items[3][:quantity]).to eq(1)
        end
      end

      context 'invalid item selection' do
        it "returns 'Invalid selection! : Money in vending machine = calculated money'" do
          expect(obj.vend('A05', 0.50)).to eq("Invalid selection! : Money in vending machine = #{money}")
        end
      end
    end
  end
end