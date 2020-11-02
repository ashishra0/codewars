require_relative '../../lib/7kyu/middle_char.rb'

RSpec.describe 'get_middle' do
  context 'odd length' do
    it 'should return the middle character' do
      str = "testing"
      expect(get_middle(str)).to eq('t')
    end
  end

  context 'even length' do
    it 'should return the middle 2 characters' do
      str = "test"
      expect(get_middle(str)).to eq('es')
    end
  end
end