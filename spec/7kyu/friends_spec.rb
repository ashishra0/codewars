require_relative '../../lib/7kyu/friends.rb'

RSpec.describe 'friend' do
  it 'filters out name that has 4 letters from a list' do
    list = ["Ryan", "Kieran", "Jason", "Yous"]
    output = ["Ryan", "Yous"]
    expect(friend(list)).to eq(output)
  end
end