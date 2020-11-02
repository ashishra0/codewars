require_relative '../../lib/7kyu/square_digit.rb'

RSpec.describe 'square_digits' do
  it 'should square every digit of given number' do
    expect(square_digits(3212)).to eq(9414)
    expect(square_digits(2112)).to eq(4114)
    expect(square_digits(4545)).to eq(16251625)
  end
end