require_relative '../../lib/6kyu/spin_word.rb'

RSpec.describe '#spin' do
  let(:word) { "Hey fellow warriors" }

  it 'returns the word with 5 or more letters reversed' do
    res = "Hey wollef sroirraw"
    expect(spin(word)).to eq(res)
  end
end