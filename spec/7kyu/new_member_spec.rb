require_relative '../../lib/7kyu/new_member.rb'

RSpec.describe 'open_or_senior' do
  it 'categorizes member into open or senior category' do
    data = [[45, 12],[55,21],[19, -2],[104, 20]]
    expect(open_or_senior(data)).to eq(["Open", "Senior", "Open", "Senior"])
  end
end