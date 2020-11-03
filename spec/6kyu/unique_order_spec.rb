require_relative '../../lib/6kyu/unique_order.rb'

RSpec.describe '#unique_in_order' do
  it 'returns a list of items without any elements with the same value' do
    input = 'AAAABBBCCDAABBB'
    res = ['A', 'B', 'C', 'D', 'A', 'B']

    expect(unique_in_order(input)).to eq(res)
  end
end