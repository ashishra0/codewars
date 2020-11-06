require_relative '../../lib/6kyu/compare'

RSpec.describe '#comp' do
  let(:array1) { [121, 144, 19, 161, 19, 144, 19, 11] }
  let(:array2) { [121, 14_641, 20_736, 361, 25_921, 361, 20_736, 361] }

  let(:array3) { [121, 144, 19, 161, 19, 144, 19, 11] }
  let(:array4) { [121, 14_641, 20_736, 36_100, 25_921, 361, 20_736, 361] }

  context 'valid scenario' do
    it 'returns true if two arrays have the same elements squared' do
      expect(comp(array1, array2)).to eq(true)
    end
  end

  context 'invalid scenario' do
    it 'returns false if two arrays do not have same elements squared' do
      expect(comp(array3, array4)).to eq(false)
    end

    it 'returns false if arrays are empty' do
      expect(comp([], [])).to eq(false)
    end
  end
end
