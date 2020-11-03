require_relative '../../lib/6kyu/duplicate_encode.rb'

RSpec.describe '#duplicate_encode' do
  let(:word) { "abracadabra" }

  it "returns new string consisting of '(' & ')'" do
    res = '))))()())))'
    expect(duplicate_encode(word)).to eq(res)
  end
end