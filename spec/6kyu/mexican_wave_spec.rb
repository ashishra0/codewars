require_relative '../../lib/6kyu/mexican_wave'

RSpec.describe '#wave' do
  it 'returns array of strings with each letter being uppercase' do
    res = %w[Hello hEllo heLlo helLo hellO]
    res2 = ['Two words', 'tWo words', 'twO words', 'two Words', 'two wOrds', 'two woRds', 'two worDs', 'two wordS']
    expect(wave('hello')).to eq(res)
    expect(wave('two words')).to eq(res2)
  end

  it 'returns empty array if input is empty' do
    expect(wave('')).to eq([])
  end

  it 'should skip whitespace in the input' do
    res = [' Gap ', ' gAp ', ' gaP ']
    expect(wave(' gap ')).to eq(res)
  end
end
