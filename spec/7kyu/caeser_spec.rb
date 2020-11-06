require_relative '../../lib/7kyu/caeser'

RSpec.describe '#caeser' do
  let(:message) { 'hello' }
  let(:res1) { 'OLSSV' }
  let(:res2) { 'KHOOR' }

  it 'shifts the input string by 7' do
    expect(caeser(message, 7)).to eq(res1)
  end

  it 'shifts the input string by 3' do
    expect(caeser(message, 3)).to eq(res2)
  end
end
