require_relative '../../lib/6kyu/meeting.rb'

RSpec.describe '#meeting' do

  let(:s) { "Fred:Corwill;Wilfred:Corwill;Barney:Tornbull;Betty:Tornbull;Bjon:Tornbull;Raphael:Corwill;Alfred:Corwill" }

  it 'returns the result between parentheses separated by a comma.' do
    res = "(CORWILL, ALFRED)(CORWILL, FRED)(CORWILL, RAPHAEL)(CORWILL, WILFRED)(TORNBULL, BARNEY)(TORNBULL, BETTY)(TORNBULL, BJON)"

    expect(meeting(s)).to eq(res)
  end
end