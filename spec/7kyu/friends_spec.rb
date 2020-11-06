require_relative '../../lib/7kyu/friends'

RSpec.describe 'friend' do
  it 'filters out name that has 4 letters from a list' do
    list = %w[Ryan Kieran Jason Yous]
    output = %w[Ryan Yous]
    expect(friend(list)).to eq(output)
  end
end
