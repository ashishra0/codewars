require_relative '../../lib/7kyu/vowel'
RSpec.describe 'get_count' do
  it 'returns the count of vowels in the string' do
    expect(get_count('abracadabra')).to eq(5)
  end

  it 'returns 0 if string has no vowels' do
    expect(get_count('hjklgnb')).to eq(0)
  end
end
