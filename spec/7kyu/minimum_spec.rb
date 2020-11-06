require_relative '../../lib/7kyu/minimum'

RSpec.describe 'remove_smallest' do
  it 'removes the element with lower index' do
    arr = [43, 32, 12, 1, 2]
    output = [43, 32, 12, 2]
    expect(remove_smallest(arr)).to eq(output)
  end

  it 'returns empty array' do
    expect(remove_smallest([])).to eq([])
  end
end
