require_relative '../../lib/6kyu/array_diff'

RSpec.describe 'array_diff' do
  it 'removes identical values from two arrays' do
    one = ['a', 'z', 'e', 1, 45]
    two = ['z', 45, 'r', 't']
    res = ['a', 'e', 1]
    expect(array_diff(one, two)).to eq(res)
  end
end
