require_relative '../../lib/7kyu/shortest_word.rb'

RSpec.describe 'find_short' do
  it 'should return the length of shortest word' do
    s = 'the world is not enough'
    expect(find_short(s)).to eq(2)
  end
end