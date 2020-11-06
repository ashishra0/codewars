require_relative '../../lib/7kyu/reverse_letter'

RSpec.describe 'reverse_letter' do
  it 'should reverse the letter' do
    str = 'ashish'
    exp = 'hsihsa'
    expect(reverse_letter(str)).to eq(exp)
  end
end
