require_relative '../../lib/7kyu/growing_plant'

RSpec.describe '#bugger' do
  it 'returns no of days for a plant to reach desired height' do
    expect(growing_plant(100, 10, 910)).to eq(10)
    expect(growing_plant(10, 9, 4)).to eq(1)
    expect(growing_plant(5, 2, 5)).to eq(1)
    expect(growing_plant(5, 2, 6)).to eq(2)
  end
end
