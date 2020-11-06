require_relative '../../lib/7kyu/gauss_sum'

RSpec.describe 'add' do
  it 'should add whole numbers upto a specified limit' do
    expect(add(100)).to eq(5050)
    expect(add(200)).to eq(20_100)
    expect(add(400)).to eq(80_200)
  end
end
