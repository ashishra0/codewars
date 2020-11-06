require_relative '../../lib/7kyu/print_error'

RSpec.describe 'printer_error' do
  it 'should return the error rate' do
    inp = 'aaaaaaaaaaaaaaaabbbzxbbbmmmmmmmmmpqmmxyz'
    expect(printer_error(inp)).to eq('7/40')
  end

  it 'has no error' do
    inp = 'aaaaaabcdefghijklm'
    expect(printer_error(inp)).to eq("0/#{inp.length}")
  end
end
