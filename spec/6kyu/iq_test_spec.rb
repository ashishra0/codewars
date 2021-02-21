require_relative '../../lib/6kyu/iq_test'

RSpec.describe '#iq_test' do
  let(:input1) { '2 4 7 8 10' }
  let(:input2) { '1 2 2' }
  let(:input3) { '1 2 1 1' }

  it 'returns the index position' do
    expect(iq_test(input1)).to eq(3)
    expect(iq_test(input2)).to eq(1)
    expect(iq_test(input3)).to eq(2)
  end
end
