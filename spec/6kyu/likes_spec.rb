require_relative '../../lib/6kyu/likes'

RSpec.describe '#likes' do
  it 'returns the names of people who like an item' do
    name = %w[Alex Jacob Mark Max]
    res = 'Alex, Jacob and 2 others like this'
    expect(likes(name)).to eq(res)
  end
end
