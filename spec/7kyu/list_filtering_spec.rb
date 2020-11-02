require_relative '../../lib/7kyu/list_filtering.rb'

RSpec.describe 'filter_list' do
  it 'should filter out strings and return integers only' do
    input = [1,2,"a","b",100,34]
    output = [1,2,100,34]
    expect(filter_list(input)).to eq(output)    
  end

  it 'should return empty list if there are no integers' do
    input = ["a","b","c","z"]
    expect(filter_list(input)).to eq([])
  end
end