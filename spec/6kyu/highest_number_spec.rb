require_relative '../../lib/6kyu/highest_number'

RSpec.describe '#highest_rank' do
  let(:input1) { [12, 10, 8, 12, 7, 6, 4, 10, 12] }
  let(:input2) { [1, 1, 2, 2, 3] }

  it 'returns the number which is most frequent in the given input array.' do
    expect(highest_rank(input1)).to eq(12)
  end

  it 'return the largest number amongst other high occuring numbers' do
    expect(highest_rank(input2)).to eq(2)
  end
end
