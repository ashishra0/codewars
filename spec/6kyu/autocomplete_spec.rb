require_relative '../../lib/6kyu/autocomplete'

RSpec.describe '#autocomplete' do
  let(:input) { 'ai' }
  let(:dict1) { %w[airplane airport apple ball] }
  let(:dict2) { %w[airplane airport aim airforce airbus aiding] }
  let(:dict3) { %w[tree bed hill star] }

  it 'returns values from the dictionary starting with input string' do
    expect(autocomplete(input, dict1)).to eq(%w[airplane airport])
  end

  it 'should not return more than 5 matching values' do
    expect(autocomplete(input, dict2)).to eq(%w[airplane airport aim airforce airbus])
  end

  it 'returns an empty array if no match found' do
    expect(autocomplete(input, dict3)).to eq([])
  end
end
