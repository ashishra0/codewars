require_relative '../../lib/6kyu/duplicate.rb'

RSpec.describe '#duplicate_count' do
  it 'returns the count of distinct characters' do
    input = "Indivisibilities"
    input2 = "abcdea"
    expect(duplicate_count(input)).to eq(2)
    expect(duplicate_count(input2)).to eq(1)
  end
end