require_relative '../../lib/6kyu/parity_outlier'

RSpec.describe '#find_outlier' do
  let(:num_one) { [2, 6, 8, 10, 3] }
  let(:num_two) { [-100_000_000_000_000_007, -18, 6, -8, -10, 6, 12, -24, 36] }
  let(:num_three) { [1, 1, 1, 1, 1, 44, 7, 7, 7, 7, 7, 7, 7, 7] }

  it 'returns multiplicative persistence' do
    expect(find_outlier(num_one)).to eq(3)
    expect(find_outlier(num_two)).to eq(-100_000_000_000_000_007)
    expect(find_outlier(num_three)).to eq(44)
  end
end
