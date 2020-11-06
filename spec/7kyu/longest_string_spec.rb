require_relative '../../lib/7kyu/longest_string'

RSpec.describe 'longest' do
  it 'should return longest unique string' do
    s1 = 'aretheyhere'
    s2 = 'yestheyarehere'
    output = 'aehrsty'
    expect(longest(s1, s2)).to eq(output)
  end
end
