require_relative '../../lib/7kyu/disemvowel_troll.rb'

RSpec.describe 'Vowel' do
  it 'removes all the vowels' do
    obj = Vowel.new
    str = 'mynameisapple'
    expect(obj.disemvowel(str)).to eq('mynmsppl')
  end
end
