require_relative '../../lib/6kyu/persistence_bugger'

RSpec.describe '#bugger' do
  let(:num_one) { 999 }
  let(:num_two) { 3 }
  let(:num_three) { 25 }
  let(:num_four) { 444 }
  let(:num_five) { 1999 }
  let(:num_six) { 999_999_99 }

  it 'returns multiplicative persistence' do
    expect(bugger(num_one)).to eq(4)
    expect(bugger(num_three)).to eq(2)
    expect(bugger(num_four)).to eq(3)
    expect(bugger(num_five)).to eq(4)
    expect(bugger(num_six)).to eq(2)
  end

  it 'returns 0 as multiplicative persistence for single digit input' do
    expect(bugger(num_two)).to eq(0)
  end
end
