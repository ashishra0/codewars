require_relative '../../lib/6kyu/str_to_hash'

RSpec.describe '#str_to_hash' do
  let(:input_one) { 'a=1, b=2, c=3, d=4' }
  let(:input_two) { 'a=11, k=14, n=13, i=20, n=17, d=18, e=8, c=17, n=15, a=14, h=19, n=5, o=14, x=14, v=17, d=10, p=1, b=20, b=2, n=11, h=14, o=5, j=18, b=16, o=12, l=18' }

  it 'returns no of days for a plant to reach desired height' do
    expect(str_to_hash(input_one)).to eq({ :a => 1, :b => 2, :c => 3, :d => 4 })
    expect(str_to_hash(input_two)).to eq({ :a => 14, :k => 14, :n => 11, :i => 20, :d => 10, :e => 8, :c => 17, :h => 14, :o => 12, :x => 14, :v => 17, :p => 1, :b => 16, :j => 18, :l => 18 })
    expect(str_to_hash('')).to eq({})
  end
end
