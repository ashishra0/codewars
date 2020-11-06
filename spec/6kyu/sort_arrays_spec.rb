require_relative '../../lib/6kyu/sort_arrays'

RSpec.describe '#sortme' do
  let(:example1) { ['Hello', 'there', "I'm", 'fine'] }
  let(:example2) { %w[C d a B] }

  let(:result1) { ['fine', 'Hello', "I'm", 'there'] }
  let(:result2) { %w[a B C d] }
  it 'should sort input in alphabetical order' do
    expect(sortme(example1)).to eq(result1)
    expect(sortme(example2)).to eq(result2)
  end
end
