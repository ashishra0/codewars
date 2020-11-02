require_relative '../../lib/6kyu/array_helper.rb'

RSpec.describe Array do
  let(:arr) { [1,2,3,4] }

  context 'valid scenario' do
    it 'should initialize with no arguments' do
      expect(arr).to be_an_instance_of(Array)
    end
  end

  context '#square' do
    it 'should square each element' do
      exp = [1,4,9,16]
      expect(arr.square).to eq(exp)
    end
  end

  context '#cube' do
    it 'should cube each element' do
      exp = [1, 8, 27, 64]
      expect(arr.cube).to eq(exp)
    end
  end

  context '#sum' do
    it 'should return the sum' do
      expect(arr.sum).to eq(10)
    end
  end

  context '#average' do
    it 'should return the average' do
      expect(arr.average).to eq(2)
    end
  end

  context '#even' do
    it 'should return even elements' do
      expect(arr.even).to eq([2,4])
    end
  end

  context '#odd' do
    it 'should return odd elements' do
      expect(arr.odd).to eq([1, 3])
    end
  end
end