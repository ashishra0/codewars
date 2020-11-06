require_relative '../../lib/7kyu/desc_order'

RSpec.describe 'descending' do
  it 'changes the order of digits from ascending to descending' do
    desc = Descending.new
    num = 12_345
    expect(desc.descending_order(num)).to eq 54_321
  end
end
