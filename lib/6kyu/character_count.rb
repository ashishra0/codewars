def count_chars(s)
  return {} if s.empty?
  str = s.split("")
  count = Hash[str.collect { |v| [v, 0] }]
  str.each do |char|
    if count.has_key?(char)
      count[char] += 1
    end
  end
  count
end

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