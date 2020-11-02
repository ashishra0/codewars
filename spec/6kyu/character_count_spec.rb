require_relative '../../lib/6kyu/character_count.rb'

RSpec.describe "count_chars" do
  it 'returns empty hash if string is empty' do
    str = ""
    expect(count_chars(str)).to eq({})
  end

  it 'returns count of each character in a hash' do
    str = "aba"
    res = {"a"=>2, "b"=>1}
    expect(count_chars(str)).to eq(res)
  end
end