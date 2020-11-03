require_relative '../../lib/6kyu/autocomplete.rb'

RSpec.describe '#autocomplete' do
  let(:input) { 'ai' }
  let(:dict_1) { ['airplane','airport','apple','ball'] }
  let(:dict_2) { ['airplane','airport','aim','airforce', 'airbus', 'aiding'] }
  let(:dict_3) { ['tree', 'bed', 'hill', 'star']}

  it 'returns values from the dictionary starting with input string' do
    expect(autocomplete(input, dict_1)).to eq(['airplane', 'airport'])
  end

  it 'should not return more than 5 matching values' do
    expect(autocomplete(input, dict_2)).to eq(['airplane','airport','aim','airforce', 'airbus'])
  end

  it 'returns an empty array if no match found' do
    expect(autocomplete(input, dict_3)).to eq([])
  end
end