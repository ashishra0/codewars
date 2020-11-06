require_relative '../../lib/6kyu/find_odd_int'

RSpec.describe '#find_it' do
  let(:input1) { [17, 8, 17, 6, 3, 18, 1, 20, 14, 4, 2, 16, 3, 18, 20, 3, 3, 2, 14, 16, 4, 1, 6] }
  let(:input2) { [20, 1, -1, 2, -2, 3, 3, 5, 5, 1, 2, 4, 20, 4, -1, -2, 5] }

  it 'returns the odd occuring int' do
    expect(find_it(input1)).to eq(8)
    expect(find_it(input2)).to eq(5)
  end
end
