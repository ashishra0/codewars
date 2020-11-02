require_relative '../../lib/7kyu/sum_low_int.rb'

RSpec.describe 'sum_two_small_numbers' do
  it 'should return the sum of the two lowest positive integer' do
    arr = [5, 25, 10, 28, 24]
    expect(sum_two_small_numbers(arr)).to eq(15) 
  end
end