require_relative '../../lib/7kyu/gauss_sum.rb'

RSpec.describe 'add' do
  it 'should add whole numbers upto a specified limit' do
    expect(add(100)).to eq(5050)
    expect(add(200)).to eq(20100)
    expect(add(400)).to eq(80200)
  end
end