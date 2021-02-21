require_relative '../../lib/6kyu/find_uniq'

RSpec.describe '#find_uniq' do
  let(:input1) { [1, 1, 1, 1, 0] }
  let(:input2) { [1, 1, 1, 2, 1, 1] }
  let(:input3) { [0, 0, 0.55, 0, 0] }

  it 'returns the unique number' do
    expect(find_uniq(input1)).to eq(0)
    expect(find_uniq(input2)).to eq(2)
    expect(find_uniq(input3)).to eq(0.55)
  end
end
